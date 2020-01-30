using Core.Utilities.Results;

namespace Business.RulesForBusiness
{
    public interface IBusinessRules
    {
        public IResult CheckIfNameExist(string name);

    }
}