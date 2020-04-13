using System.Collections.Generic;
using Core.DataAccess;
using Core.Entities.Concrete;

namespace DataAccess.Abstract
{
  /// <summary>
  /// Bu sýnýf Repository pattern kullanýr IEntityRepository'den implemente edilir T generic tipinde nesne alýr.
  /// sýnýfa özel operasyonlar bu sýnýf içinde tanýmlanýr. örneðini IUserDal interface i içinde bulabilirsiniz.
  /// </summary>
  public interface IUserDal : IEntityRepository<User>
  {
    List<OperationClaim> GetClaims(int userId);
  }
}