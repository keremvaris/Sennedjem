using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;

namespace Business.RulesForBusiness
{
    public class CategoryBusinessLogic : IBusinessRules
    {
        private ICategoryDal _categoryDal;

        public CategoryBusinessLogic(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }
        public IResult CheckIfNameExist(string categoryName)
        {
            if (_categoryDal.Get(p => p.CategoryName == categoryName) != null)
            {
                return new ErrorResult(Messages.NameAlreadyExist);
            }
            return new SuccessResult();
        }


    }
}
