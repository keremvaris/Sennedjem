using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Commands
{
    public class DeleteUserClaimCommand : IRequest<IResult>
    {
        public int Id { get; set; }
        public class DeleteUserClaimCommandHandler : IRequestHandler<DeleteUserClaimCommand, IResult>
        {
            private readonly IUserClaimDal _userClaimDal;

            public DeleteUserClaimCommandHandler(IUserClaimDal userClaimDal)
            {
                _userClaimDal = userClaimDal;
            }

            public async Task<IResult> Handle(DeleteUserClaimCommand request, CancellationToken cancellationToken)
            {
                var entityToDelete = await _userClaimDal.GetAsync(x => x.Id == request.Id);

                _userClaimDal.Delete(entityToDelete);
                await _userClaimDal.SaveChangesAsync();
                return new SuccessResult(Messages.UserClaimDeleted);
            }
        }
    }
}
