using Business.Handlers.Customers.Commands;
using FluentValidation;

namespace Business.ValidationRules.FluentValidation
{
    public class CreateCustomerValidator : AbstractValidator<UpdateCustomerCommand>
    {
        public CreateCustomerValidator()
        {
            RuleFor(x => x.Username).NotNull().NotEmpty();
        }
    }

    public class UpdateCustomerValidator : AbstractValidator<UpdateCustomerCommand>
    {
        public UpdateCustomerValidator()
        {
            RuleFor(x => x.Username).NotNull().NotEmpty();
        }
    }
}
