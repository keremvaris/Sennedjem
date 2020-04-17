using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Commands.RegisterAuth
{

    public class RegisterUser
    {
        public class Command : IRequest<IResult>
        {
            //public UserForRegisterDto UserForAdd { get; set; }
            public string Email { get; set; }
            public string Password { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
        }
        public class RegisterUserCommandHandler : IRequestHandler<Command, IResult>
        {
            private readonly IUserDal _userDal;
            private readonly ITokenHelper _tokenHelper;

            public RegisterUserCommandHandler(IUserDal userDal, ITokenHelper tokenHelper)
            {
                _userDal = userDal;
                _tokenHelper = tokenHelper;

            }



            [ValidationAspect(typeof(RegisterUserValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(Command request, CancellationToken cancellationToken)
            {
                var userExits = await _userDal.GetAsync(u => u.Email == request.Email);

                if (userExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);


                byte[] passwordHash, passwordSalt;
                HashingHelper.CreatePasswordHash(request.Password, out passwordSalt, out passwordHash);
                var user = new User
                {
                    Email = request.Email,
                    FirstName = request.FirstName,
                    LastName = request.LastName,
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

