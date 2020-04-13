namespace Core.Entities.Concrete
{
  public class UserGroup : IEntity
  {
    public int Id { get; set; }
    public int GroupId { get; set; }
    public int UserId { get; set; }
  }
}
