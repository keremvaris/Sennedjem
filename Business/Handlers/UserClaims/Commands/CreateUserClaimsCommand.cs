﻿using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Commands
{
    /// <summary>
    /// For Internal Use Only,
    /// Registers All Existing Operation Claims To Given User
    /// </summary>

    public class CreateUserClaimsCommand : IRequest<IResult>
    {
        public int UserId { get; set; }
        public IEnumerable<OperationClaim> OperationClaims { get; set; }

        public class CreateUserClaimsCommandHandler : IRequestHandler<CreateUserClaimsCommand, IResult>
        {
            IUserClaimRepository _userClaimsRepository;

            public CreateUserClaimsCommandHandler(IUserClaimRepository userClaimsRepository)
            {
                _userClaimsRepository = userClaimsRepository;
            }

            public async Task<IResult> Handle(CreateUserClaimsCommand request, CancellationToken cancellationToken)
            {

                foreach (var claim in request.OperationClaims)
                {
                    if (await DoesClaimExistsForUser(new UserClaim { ClaimId = claim.Id, UserId = request.UserId }))
                        continue;

                    _userClaimsRepository.Add(new UserClaim
                    {
                        ClaimId = claim.Id,
                        UserId = request.UserId
                    });
                }
                await _userClaimsRepository.SaveChangesAsync();
                return new SuccessResult(Messages.UserClaimCreated);
            }
            private async Task<bool> DoesClaimExistsForUser(UserClaim userClaim)
            {
                return (await _userClaimsRepository.GetAsync(x => x.UserId == userClaim.UserId && x.ClaimId == userClaim.ClaimId)) is null ? false : true;
            }

        }
    }
}
