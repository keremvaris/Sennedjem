using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Queries
{
    [SecuredOperation]
    public class GetCustomersQuery : IRequest<IDataResult<IEnumerable<Customer>>>
    {
        public class GetCustomersQueryHandler : IRequestHandler<GetCustomersQuery, IDataResult<IEnumerable<Customer>>>
        {
            private readonly ICustomerRepository _customerMongoRepository;

            public GetCustomersQueryHandler(ICustomerRepository customerMongoRepository)
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
