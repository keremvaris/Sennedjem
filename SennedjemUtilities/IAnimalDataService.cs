using Entities.Concrete;
using Refit;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SennedjemUtilities
{
    public interface IAnimalDataService
    {
        [Get("/api/Animals/getall")]
        Task<List<Animal>> GetAnimals();
    }
}
