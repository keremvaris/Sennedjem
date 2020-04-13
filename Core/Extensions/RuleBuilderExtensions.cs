using Core.Utilities.Messages;
using FluentValidation;

namespace Core.Extensions
{
    public static class RuleBuilderExtensions
    {
        public static IRuleBuilder<T, string> Password<T>(this IRuleBuilder<T, string> ruleBuilder, int minimumLength = 8)
        {
            var options = ruleBuilder
           .NotEmpty().WithMessage(ValidationExtensionMessages.PasswordEmpty)
           .MinimumLength(minimumLength).WithMessage(ValidationExtensionMessages.PasswordLength)
           .Matches("[A-Z]").WithMessage(ValidationExtensionMessages.PasswordUppercaseLetter)
           .Matches("[a-z]").WithMessage(ValidationExtensionMessages.PasswordLowercaseLetter)
           .Matches("[0-9]").WithMessage(ValidationExtensionMessages.PasswordDigit)
           .Matches("[^a-zA-Z0-9]").WithMessage(ValidationExtensionMessages.PasswordSpecialCharacter);
            return options;
        }
    }
}
