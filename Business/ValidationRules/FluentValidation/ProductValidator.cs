
using Business.Handlers.Products.Commands;
using FluentValidation;

namespace Business.ValidationRules.FluentValidation
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

    public class CreateProductValidator : AbstractValidator<CreateProductCommand>
    {
        public CreateProductValidator()
        {
            RuleFor(p => p.ProductName).NotEmpty();
        }
    }
    public class UpdateProductValidator : AbstractValidator<UpdateProductCommand>
    {
        public UpdateProductValidator()
        {
            RuleFor(p => p.ProductName).NotEmpty();
        }
    }
}