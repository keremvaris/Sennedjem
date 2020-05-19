using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Adapters.PersonService
{
    public interface IPersonService
    {
        Task<bool> VerifyCid(long CitizenId, string Name, string Surname, int BirthDate);
    }
}
