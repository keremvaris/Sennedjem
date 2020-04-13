using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.OperationClaims.Queries
{
    public class GetOperationClaimsQuery : IRequest<IDataResult<IEnumerable<OperationClaim>>>
    {
        public class GetOperationClaimsQueryHandler : IRequestHandler<GetOperationClaimsQuery, IDataResult<IEnumerable<OperationClaim>>>
        {
            private readonly IOperationClaimDal _operationClaimDal;

            public GetOperationClaimsQueryHandler(IOperationClaimDal operationClaimDal)
            {
                _operationClaimDal = operationClaimDal;
            }

            public async Task<IDataResult<IEnumerable<OperationClaim>>> Handle(GetOperationClaimsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<OperationClaim>>(await _operationClaimDal.GetListAsync());
            }
        }
    }
}
