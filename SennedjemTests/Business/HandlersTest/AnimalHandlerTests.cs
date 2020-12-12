using Business.Constants;
using Business.Handlers.Animals.Commands;
using Business.Handlers.Animals.Queries;
using DataAccess.Abstract;
using Entities.Concrete;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using static Business.Handlers.Animals.Commands.CreateAnimalCommand;
using static Business.Handlers.Animals.Commands.DeleteAnimalCommand;
using static Business.Handlers.Animals.Commands.UpdateAnimalCommand;
using static Business.Handlers.Animals.Queries.GetAnimalQuery;
using static Business.Handlers.Animals.Queries.GetAnimalsQuery;

namespace SennedjemTests.Business.HandlersTest
{
    [TestFixture]
    public class AnimalHandlerTests
    {
        Mock<IAnimalRepository> _animalRepository;

        [SetUp]
        public void Setup()
        {
            _animalRepository = new Mock<IAnimalRepository>();
        }

        [Test]
        public async Task Animal_GetQuery_Success()
        {
            //Arrange
            GetAnimalQuery query = new GetAnimalQuery();

            _animalRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Animal, bool>>>()))
               .ReturnsAsync(new Animal()
               {
                   AnimalId = 1,
                   AnimalName = "Test"
               });

            GetAnimalQueryHandler handler = new GetAnimalQueryHandler(_animalRepository.Object);

            //Act
            var x = await handler.Handle(query, new System.Threading.CancellationToken());

            //Asset
            Assert.That(x.Success, Is.True);
            Assert.That(x.Data.AnimalId, Is.EqualTo(1));

        }

        [Test]
        public async Task Animal_GetQueries_Success()
        {
            //Arrange
            GetAnimalsQuery query = new GetAnimalsQuery();

            _animalRepository.Setup(x => x.GetListAsync(It.IsAny<Expression<Func<Animal, bool>>>()))
               .ReturnsAsync(new List<Animal>()
               {
                   new Animal(){
                   AnimalId = 1,
                   AnimalName = "Test"
                   },
                   new Animal(){
                   AnimalId = 2,
                   AnimalName = "Test2"
                   }
               });

            GetAnimalsQueryHandler handler = new GetAnimalsQueryHandler(_animalRepository.Object);

            //Act
            var x = await handler.Handle(query, new System.Threading.CancellationToken());

            //Asset
            Assert.That(x.Success, Is.True);
            Assert.That(((List<Animal>)x.Data).Count, Is.GreaterThan(1));

        }

        [Test]
        public async Task Animal_CreateCommand_Success()
        {
            Animal rt = null;
            //Arrange
            CreateAnimalCommand command = new CreateAnimalCommand();
            command.AnimalName = "deneme";

            _animalRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Animal, bool>>>()))
               .ReturnsAsync(rt);

            _animalRepository.Setup(x => x.Add(It.IsAny<Animal>()))
               .Returns(new Animal());

            CreateAnimalCommandHandler handler = new CreateAnimalCommandHandler(_animalRepository.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _animalRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Added));
        }

        [Test]
        public async Task Animal_CreateCommand_NameAlreadyExist()
        {
            //Arrange
            CreateAnimalCommand command = new CreateAnimalCommand();
            command.AnimalName = "test";

            _animalRepository.Setup(x => x.Query())
                        .Returns(new List<Animal> { new Animal() { AnimalId = 1, AnimalName = "test" } }.AsQueryable());

            _animalRepository.Setup(x => x.Add(It.IsAny<Animal>()))
               .Returns(new Animal());

            CreateAnimalCommandHandler handler = new CreateAnimalCommandHandler(_animalRepository.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            Assert.That(x.Success, Is.False);
            Assert.That(x.Message, Is.EqualTo(Messages.NameAlreadyExist));
        }

        [Test]
        public async Task Animal_UpdateCommand_Success()
        {
            //Arrange
            UpdateAnimalCommand command = new UpdateAnimalCommand();
            command.AnimalName = "test";

            _animalRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Animal, bool>>>()))
               .ReturnsAsync(new Animal() { AnimalId = 1, AnimalName = "deneme" });

            _animalRepository.Setup(x => x.Update(It.IsAny<Animal>()))
               .Returns(new Animal());

            UpdateAnimalCommandHandler handler = new UpdateAnimalCommandHandler(_animalRepository.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _animalRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Updated));
        }

        [Test]
        public async Task Animal_DeleteCommand_Success()
        {
            //Arrange
            DeleteAnimalCommand command = new DeleteAnimalCommand();

            _animalRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Animal, bool>>>()))
               .ReturnsAsync(new Animal() { AnimalId = 1, AnimalName = "deneme" });

            _animalRepository.Setup(x => x.Delete(It.IsAny<Animal>()));

            DeleteAnimalCommandHandler handler = new DeleteAnimalCommandHandler(_animalRepository.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _animalRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Deleted));
        }


    }
}
