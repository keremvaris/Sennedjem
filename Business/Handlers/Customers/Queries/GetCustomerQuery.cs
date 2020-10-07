using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using MongoDB.Bson;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Queries
{
    [SecuredOperation]
    public class GetCustomerQuery : IRequest<IDataResult<Customer>>
    {
        public ObjectId Id { get; set; }

        public class GetCustomerQueryHandler : IRequestHandler<GetCustomerQuery, IDataResult<Customer>>
        {
            private readonly ICustomerRepository _customerMongoRepository;

            public GetCustomerQueryHandler(ICustomerRepository customerMongoRepository)
            {
                _customerMongoRepository = customerMongoRepository;
            }

            [LogAspect(typeof(MongoDbLogger))]
            public async Task<IDataResult<Customer>> Handle(GetCustomerQuery request, CancellationToken cancellationToken)
            {
                var customer = await _customerMongoRepository.GetByIdAsync(request.Id);
                return new SuccessDataResult<Customer>(customer);
            }
        }
    }
}
