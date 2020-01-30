using Business.Handlers.Categories.Commands.CreateCategory;
using Business.Handlers.Categories.Commands.UpdateCategory;
using Business.Handlers.Products.Commands.CreateProduct;
using Business.Handlers.Products.Commands.UpdateProduct;
using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class CreateCategoryValidator : AbstractValidator<CreateCategoryCommand>
    {
        public CreateCategoryValidator()
        {
            RuleFor(p => p.CategoryName).NotEmpty();
            RuleFor(p => p.CategoryName).Length(2, 30);

        }

    }
    public class UpdateCategoryValidator : AbstractValidator<UpdateCategoryCommand>
    {
        public UpdateCategoryValidator()
        {
            RuleFor(p => p.CategoryName).NotEmpty();
            RuleFor(p => p.CategoryName).Length(2, 30);
        }
    }
}
