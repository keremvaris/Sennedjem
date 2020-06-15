using Business.BusinessAspects;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Commands
{

    public class RegisterUser
    {
        [SecuredOperation]
        public class Command : IRequest<IResult>
        {
            public string Email { get; set; }
            public string Password { get; set; }
            public string FullName { get; set; }

        }
        public class RegisterUserCommandHandler : IRequestHandler<Command, IResult>
        {
            private readonly IUserRepository _userDal;


            public RegisterUserCommandHandler(IUserRepository userDal)
            {
                _userDal = userDal;
            }



            [ValidationAspect(typeof(RegisterUserValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(Command request, CancellationToken cancellationToken)
            {
                var userExits = await _userDal.GetAsync(u => u.Email == request.Email);

                if (userExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);


                HashingHelper.CreatePasswordHash(request.Password, out byte[] passwordSalt, out byte[] passwordHash);
                var user = new User
                {
                    Email = request.Email,

                    FullName = request.FullName,
                    PasswordHash = passwordHash,
                    PasswordSalt = passwordSalt,
                    Status = true
                };

                _userDal.Add(user);
                await _userDal.SaveChangesAsync();
                return new SuccessResult(Messages.Added);
            }
        }
    }
}

