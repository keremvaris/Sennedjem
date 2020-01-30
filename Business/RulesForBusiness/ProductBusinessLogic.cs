using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;

namespace Business.RulesForBusiness
{
    public class ProductBusinessLogic : IBusinessRules
    {
        private IProductDal _productDal;

        public ProductBusinessLogic(IProductDal productDal)
        {
            _productDal = productDal;
        }
        public IResult CheckIfNameExist(string productName)
        {
            if (_productDal.Get(p => p.ProductName == productName) != null)
            {
                return new ErrorResult(Messages.NameAlreadyExist);
            }
            return new SuccessResult();
        }

    }
}
