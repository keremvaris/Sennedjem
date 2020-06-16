using Entities.Concrete;
using Microsoft.Extensions.Configuration;
using Refit;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SennedjemUtilities
{
    class Program
    {
        static async Task Main(string[] args)
        {

            var getAnimals = await AnimalDataAsync();

            foreach (var item in getAnimals)
            {
                Console.WriteLine(item.AnimalId + " - " + item.AnimalName);
            }

            Console.ReadKey();
        }

        public static async Task<List<Animal>> AnimalDataAsync()
        {
            IConfiguration configuration = new ConfigurationBuilder()
                            .AddJsonFile("appsettings.Staging.json", optional: true, reloadOnChange: true)
                            .AddEnvironmentVariables()
                            .Build();
            List<Animal> animals = new List<Animal>();
            var url = configuration.GetSection("Services")["AnimalServiceUrl"];
            var svc = RestService.For<IAnimalDataService>(url);

            await svc.GetAnimals().ContinueWith(ret =>
            {
                if (ret.IsCompleted == true
                 && ret.Status == TaskStatus.RanToCompletion)
                {
                    animals = ret.Result;
                }
            });

            return animals;
        }
    }


}

