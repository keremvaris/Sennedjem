using Core.Utilities.Messages;
using FluentValidation;

namespace Core.Extensions
{
    public static class RuleBuilderExtensions
    {
        public static IRuleBuilder<T, string> Password<T>(this IRuleBuilder<T, string> ruleBuilder, int minimumLength = 8)
        {
            var options = ruleBuilder
                .NotEmpty().WithMessage("Parola Boş Olamaz!")
                .MinimumLength(minimumLength).WithMessage("Minimum 8 Karakter Uzunluğunda Olmalıdır!")
                .Matches("[A-Z]").WithMessage("En Az 1 Büyük Harf İçermeledir!")
                .Matches("[a-z]").WithMessage("En Az 1 Küçük Harf İçermeledir!")
                .Matches("[0-9]").WithMessage("En Az 1 Rakam İçermeledir!")
                .Matches("[^a-zA-Z0-9]").WithMessage("En Az 1 Simge İçermelidir!");
            return options;
        }
    }
}
