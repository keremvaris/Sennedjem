using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Queries
{
    [SecuredOperation]
    public class GetCustomersQuery: IRequest<IDataResult<IEnumerable<Customer>>>
    {
        class GetCustomersQueryHandler : IRequestHandler<GetCustomersQuery, IDataResult<IEnumerable<Customer>>>
        {
            private readonly ICustomerMongoRepository _customerMongoRepository;

            public GetCustomersQueryHandler(ICustomerMongoRepository customerMongoRepository)
            {
                _customerMongoRepository = customerMongoRepository;
            }

            public async Task<IDataResult<IEnumerable<Customer>>> Handle(GetCustomersQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Customer>>(await _customerMongoRepository.GetListAsync());
            }
        }
    }
}
