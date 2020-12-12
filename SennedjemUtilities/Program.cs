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
        protected Program()
        {

        }
        static async Task Main(string[] args)
        {
            Console.WriteLine("Yeni Hayvan Kaydı İsteği Atıldı.\r\n");
            await CreateAnimal();
            Console.WriteLine("Tüm Hayvanlar Listeleniyor\r\n");
            var getAnimals = await AnimalDataAsync();
            Console.WriteLine("AnimalId   AnimalName");
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
                if (ret.IsCompleted
                 && ret.Status == TaskStatus.RanToCompletion)
                {
                    animals = ret.Result;
                }
            });

            return animals;
        }

        public static async Task CreateAnimal()
        {
            IConfiguration configuration = new ConfigurationBuilder()
               .AddJsonFile("appsettings.Staging.json", optional: true, reloadOnChange: true)
               .AddEnvironmentVariables()
               .Build();

            var animal = new AnimalDto()
            {
                AnimalName = "Bubalus bubalis"
            };
            var url = configuration.GetSection("Services")["AnimalServiceUrl"];
            var svc = RestService.For<IAnimalDataService>(url);
            await svc.AddAnimal(animal);

            Console.WriteLine(animal.AnimalName + " Kaydı Başarıyla Eklendi.\r\n");
        }
    }
}

