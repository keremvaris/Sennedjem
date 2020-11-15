using Business.BusinessAspects;
using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Commands
{
    [SecuredOperation]
    public class CreateCustomerCommand : IRequest<IResult>
    {
        public string Username { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public DateTime Birthdate { get; set; }
        public string Email { get; set; }
        public bool Active { get; set; }
        public List<int> Accounts { get; set; }
        public string[] Tier_and_details { get; set; }
        public DateTime RecordDate { get; set; }

        public class CreateCustomerCommandHandler : IRequestHandler<CreateCustomerCommand, IResult>
        {
            private readonly ICustomerRepository _customerMongoRepository;

            public CreateCustomerCommandHandler(ICustomerRepository customerMongoRepository)
            {
                _customerMongoRepository = customerMongoRepository;
            }

            /// <summary>
            ///            
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateCustomerValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(MongoDbLogger))]

            public async Task<IResult> Handle(CreateCustomerCommand request, CancellationToken cancellationToken)
            {
                var isCustomerExits = await _customerMongoRepository.GetListAsync(u => u.Username == request.Username);

                if (isCustomerExits.FirstOrDefault() != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var customer = new Customer
                {
                    //classın özellikleri buraya yazılır.
                    Username = request.Username,
                    Accounts = request.Accounts,
                    Active = request.Active,
                    Address = request.Address,
                    Birthdate = request.Birthdate,
                    Email = request.Email,
                    Name = request.Name,
                    RecordDate = DateTime.Now,
                    Tier_and_details = request.Tier_and_details

                };

                await _customerMongoRepository.AddAsync(customer);
                return new SuccessResult(Messages.Added);
            }
        }
    }
}
