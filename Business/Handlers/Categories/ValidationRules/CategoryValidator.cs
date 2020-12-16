
using Business.Handlers.Categories.Commands;
using FluentValidation;

namespace Business.Handlers.Categories.ValidationRules
{
    /// <summary>
    /// Bu sınıf FluentValidation kütüphanesini kullanır. 
    /// AbstractValidator içine  Handlerlarda bulunan komut yada Query nesnelerini nesnelerini alır
    /// işi validasyon yapmaktır. 
    /// iş kuralları buraya yazılmak gerçekten doğrulama gerektiren operasyonlarla birlikte kullanılır.
    /// her komut yada sorgu nesnesi için ayrı ayrı yazılabildiğinden 
    /// CRUD operasyonların herbiri için ayrı validasyonlar yapabilme yeteneği vardır.
    /// code syntaxı aşağıdaki gibidir.
    /// Aspect olarak Hanler metodlarının üzerinde kullanılır.
    /// </summary>

    public class CreateCategoryValidator : AbstractValidator<CreateCategoryCommand>
    {
        public CreateCategoryValidator()
        {
            RuleFor(x => x.CategoryName).NotEmpty();

        }
    }
    public class UpdateCategoryValidator : AbstractValidator<UpdateCategoryCommand>
    {
        public UpdateCategoryValidator()
        {
            RuleFor(x => x.CategoryName).NotEmpty();

        }
    }
}