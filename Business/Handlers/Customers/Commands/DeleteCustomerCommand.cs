using Business.Constants;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using MongoDB.Bson;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Commands
{
    public class DeleteCustomerCommand : IRequest<IResult>
    {
        public ObjectId Id { get; set; }

        class DeleteCustomerCommandHandler : IRequestHandler<DeleteCustomerCommand, IResult>
        {
            private readonly ICustomerMongoRepository _customerMongoRepository;

            public DeleteCustomerCommandHandler(ICustomerMongoRepository customerMongoRepository)
            {
                _customerMongoRepository = customerMongoRepository;
            }

            [LogAspect(typeof(MongoDbLogger))]

            public async Task<IResult> Handle(DeleteCustomerCommand request, CancellationToken cancellationToken)
            {
                await _customerMongoRepository.DeleteAsync(request.Id);
                return new SuccessResult(Messages.Deleted);

            }
        }
    }
}
