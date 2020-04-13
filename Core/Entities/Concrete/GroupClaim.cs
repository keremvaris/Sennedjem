namespace Core.Entities.Concrete
{
  public class GroupClaim : IEntity
  {
    public int Id { get; set; }
    public int GroupId { get; set; }
    public int ClaimId { get; set; }

  }
}
