using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Mail;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using MediatR;
using Microsoft.Extensions.Configuration;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Commands.RegisterAuth
{
	public class xRegisterUser
	{
		public class Command : IRequest<IResult>
		{
			public long CitizenId { get; set; }

			public string FirstName { get; set; }
			public string LastName { get; set; }
			public DateTime BirthDate { get; set; }
			public int Gender { get; set; }
			public string Email { get; set; }
			public string Password { get; set; }
			public string HomePhone { get; set; }
			public string Adres { get; set; }
			public string MobilePhone { get; set; }
			public int EducationLevelId { get; set; }
			public int ContactPreferencesId { get; set; }
			public string WorkPhone { get; set; }
			public string KayitTarihi { get; set; }
			public int OccupationId { get; set; }
			public int SportsClubId { get; set; }
			public string Notlar { get; set; }

		}
		public class RegisterUserCommandHandler : IRequestHandler<Command, IResult>
		{
			private readonly IUserRepository users;

			public RegisterUserCommandHandler(IUserRepository users)
			{
				this.users = users;
			}

			/// <summary>
			/// User Register Handler sınıfıdır. Aspectler bu metodun üzerinde kullanılır.
			/// Yeni bir kullanıcı ekler geriye sadece mesaj döner 
			/// </summary>
			/// <param name="request"></param>
			/// <param name="cancellationToken"></param>
			/// <returns></returns>


			[ValidationAspect(typeof(RegisterUserValidator), Priority = 1)]
			[CacheRemoveAspect("Get")]
			//[LogAspect(typeof(FileLogger))]
			public async Task<IResult> Handle(Command request, CancellationToken cancellationToken)
			{

				HashingHelper.CreatePasswordHash(request.Password, out byte[] passwordSalt, out byte[] passwordHash);

				var user = new User
				{
					//Servisten Gelen Bigiler
					FullName = request.FirstName + " " + request.LastName,
					BirthDate = request.BirthDate, //servisten,
					Gender = request.Gender, //servisten 2 kadın 1 erkek

          //Kullanıcıdan Alınacak Bilgiler
          Address = request.Adres,
          MobilePhones = request.MobilePhone,
          RecordDate = DateTime.Now,
          Notes = string.Empty,
          Email = request.Email = "kerem@hemosoft.com",
          CitizenId = Convert.ToInt64(request.CitizenId),
          /*EducationLevelId = request.EducationLevelId,
          ContactPreferencesId = request.ContactPreferencesId,
          OccupationId = request.OccupationId,
          SportsClubId = request.SportsClubId,
          PasswordHash = passwordHash,
          PasswordSalt = passwordSalt,*/
          Status = true,
        };
        users.Add(user);
        await users.SaveChangesAsync();
        //var emailAddressesTo = new List<EmailAddress>();
        //emailAddressesTo.Add(new EmailAddress { Name = user.FirstName + " " + user.LastName, Address = user.Email });
        //var emailAddressesFrom = new List<EmailAddress>();
        //emailAddressesFrom.Add(new EmailAddress { Name = "Yeni Kayıt Bilgilendirme", Address = _configuration.GetSection("EmailConfiguration").GetSection("EmailFrom").Value });
        //_mailService.Send(new EmailMessage
        //{
        //    Content = $"Sayın {user.FirstName} {user.LastName} Kullanıcı Adınız: {user.TCKimlikNo} Parolanız: {request.Password} Olarak Belirlenmiştir.",
        //    ToAddresses = emailAddressesTo,
        //    Subject = user.TCKimlikNo.ToString(),
        //    FromAddresses = emailAddressesFrom
        //});

				return await Task.FromResult(new SuccessResult(Messages.Added));
			}
		}
	}
}

