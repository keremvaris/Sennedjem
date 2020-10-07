using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Customers.Commands
{
    public class UpdateCustomerCommand : IRequest<IResult>
    {
        public ObjectId Id { get; set; }
        public string Username { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public DateTime Birthdate { get; set; }
        public string Email { get; set; }
        public bool Active { get; set; }
        public List<int> Accounts { get; set; }
        public string[] Tier_and_details { get; set; }
        public DateTime RecordDate { get; set; }

        public class UpdateCustomerCommandHandler : IRequestHandler<UpdateCustomerCommand, IResult>
        {
            private readonly ICustomerRepository _customerMongoRepository;

            public UpdateCustomerCommandHandler(ICustomerRepository customerMongoRepository)
            {
                _customerMongoRepository = customerMongoRepository;
            }


            [ValidationAspect(typeof(UpdateCustomerValidator), Priority = 1)]
            [LogAspect(typeof(MongoDbLogger))]
            public async Task<IResult> Handle(UpdateCustomerCommand request, CancellationToken cancellationToken)
            {
                var customer = new Customer
                {
                    //classın özellikleri buraya yazılır.
                    Id = request.Id,
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


                await _customerMongoRepository.UpdateAsync(request.Id, customer);
                return new SuccessResult(Messages.Added);
            }
        }
    }
}
