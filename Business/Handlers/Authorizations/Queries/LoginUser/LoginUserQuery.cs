using Business.Constants;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using Entities.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Queries.LoginUser
{
    public class LoginUserQuery : IRequest<IDataResult<AccessToken>>
    {
        //public UserForLoginDto UserForLogin { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public class LoginUserQueryHandler : IRequestHandler<LoginUserQuery, IDataResult<AccessToken>>
        {
            private readonly IUserDal _userDal;
            private readonly ITokenHelper _tokenHelper;

            public LoginUserQueryHandler(IUserDal userDal, ITokenHelper tokenHelper)
            {
                _userDal = userDal;
                _tokenHelper = tokenHelper;
            }
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<AccessToken>> Handle(LoginUserQuery request, CancellationToken cancellationToken)
            {
                var user = await _userDal.GetAsync(u => u.Email == request.Email);

                if (user == null)
                    return new ErrorDataResult<AccessToken>(Messages.UserNotFound);

                if (!HashingHelper.VerifyPasswordHash(request.Password, user.PasswordSalt, user.PasswordHash))
                    return new ErrorDataResult<AccessToken>(Messages.PasswordError);

                var claims = _userDal.GetClaims(user);
                var accessToken = _tokenHelper.CreateToken(user, claims);

                return new SuccessDataResult<AccessToken>(accessToken, Messages.SuccessfulLogin);
            }
        }
    }
}
