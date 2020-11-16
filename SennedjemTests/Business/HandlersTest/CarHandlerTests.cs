
using Business.Handlers.Cars.Queries;
using DataAccess.Abstract;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using static Business.Handlers.Cars.Queries.GetCarQuery;
using Entities.Concrete;
using static Business.Handlers.Cars.Queries.GetCarsQuery;
using static Business.Handlers.Cars.Commands.CreateCarCommand;
using Business.Handlers.Cars.Commands;
using Business.Constants;
using static Business.Handlers.Cars.Commands.UpdateCarCommand;
using static Business.Handlers.Cars.Commands.DeleteCarCommand;
using MediatR;
namespace SennedjemTestsTests.Bussiness.HandlersTest
{
    [TestFixture]
    public class CarHandlerTests
    {
        Mock<ICarRepository> _carRepository;
        Mock<IMediator> _mediator;
        [SetUp]
        public void Setup()
        {
            _carRepository = new Mock<ICarRepository>();
            _mediator = new Mock<IMediator>();
        }

        [Test]
        public async Task Car_GetQuery_Success()
        {
            //Arrange
            GetCarQuery query = new GetCarQuery();

            _carRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(new Car()
//{
//propertyler buraya yazılacak
//CarId = 1,
//CarName = "Test"
//}
);

            GetCarQueryHandler handler = new GetCarQueryHandler(_carRepository.Object, _mediator.Object);

            //Act
            var x = await handler.Handle(query, new System.Threading.CancellationToken());

            //Asset
            Assert.That(x.Success, Is.True);
            Assert.That(x.Data.CarId, Is.EqualTo(1));

        }

        [Test]
        public async Task Car_GetQueries_Success()
        {
            //Arrange
            GetCarsQuery query = new GetCarsQuery();

            _carRepository.Setup(x => x.GetListAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(new List<Car>()
                        {
                    //new Car(){
                    //propertyler buraya yazılacak
                    //CarId = 1,
                    //CarName = "Test"
                    //},
                    //new Car(){
                    //CarId = 2,
                    //CarName = "Test2"
                    //}
                });

            GetCarsQueryHandler handler = new GetCarsQueryHandler(_carRepository.Object, _mediator.Object);

            //Act
            var x = await handler.Handle(query, new System.Threading.CancellationToken());

            //Asset
            Assert.That(x.Success, Is.True);
            Assert.That(((List<Car>)x.Data).Count, Is.GreaterThan(1));

        }

        [Test]
        public async Task Car_CreateCommand_Success()
        {
            Car rt = null;
            //Arrange
            CreateCarCommand command = new CreateCarCommand();
            //propertyler buraya yazılacak
            //command.CarName = "deneme";

            _carRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(rt);

            _carRepository.Setup(x => x.Add(It.IsAny<Car>()))
                        .Returns(new Car());

            CreateCarCommandHandler handler = new CreateCarCommandHandler(_carRepository.Object, _mediator.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _carRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Added));
        }

        [Test]
        public async Task Car_CreateCommand_NameAlreadyExist()
        {
            //Arrange
            CreateCarCommand command = new CreateCarCommand();
            //propertyler buraya yazılacak 
            //command.CarName = "deneme";

            _carRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(new Car() { /*TODO:propertyler buraya yazılacak CarId = 1, CarName = "deneme"*/ });

            _carRepository.Setup(x => x.Add(It.IsAny<Car>()))
                        .Returns(new Car());

            CreateCarCommandHandler handler = new CreateCarCommandHandler(_carRepository.Object, _mediator.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            Assert.That(x.Success, Is.False);
            Assert.That(x.Message, Is.EqualTo(Messages.NameAlreadyExist));
        }

        [Test]
        public async Task Car_UpdateCommand_Success()
        {
            //Arrange
            UpdateCarCommand command = new UpdateCarCommand();
            command.CarName = "test";

            _carRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(new Car() { /*TODO:propertyler buraya yazılacak CarId = 1, CarName = "deneme"*/ });

            _carRepository.Setup(x => x.Update(It.IsAny<Car>()))
                        .Returns(new Car());

            UpdateCarCommandHandler handler = new UpdateCarCommandHandler(_carRepository.Object, _mediator.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _carRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Updated));
        }

        [Test]
        public async Task Car_DeleteCommand_Success()
        {
            //Arrange
            DeleteCarCommand command = new DeleteCarCommand();

            _carRepository.Setup(x => x.GetAsync(It.IsAny<Expression<Func<Car, bool>>>()))
                        .ReturnsAsync(new Car() { /*TODO:propertyler buraya yazılacak CarId = 1, CarName = "deneme"*/});

            _carRepository.Setup(x => x.Delete(It.IsAny<Car>()));

            DeleteCarCommandHandler handler = new DeleteCarCommandHandler(_carRepository.Object, _mediator.Object);
            var x = await handler.Handle(command, new System.Threading.CancellationToken());

            _carRepository.Verify(x => x.SaveChangesAsync());
            Assert.That(x.Success, Is.True);
            Assert.That(x.Message, Is.EqualTo(Messages.Deleted));
        }
    }
}

