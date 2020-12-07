using Core.Utilities.Results;
using DataAccess.Concrete.EntityFramework.Contexts;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Business.Constants;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using DataAccess.Entities.Dtos;

namespace Business.Handlers.Lookups
{
    public class Query : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public LookupType LookupType { get; set; }
        public int? ParentId { get; set; }
    }

    /// <summary>
    /// Lookup türüne göre veriyi çeker.
    /// 
    /// Dönüş türü özellikle en genel halinde bırakılmıştır.
    /// </summary>
    public class Handler : IRequestHandler<Query, IDataResult<IEnumerable<SelectionItem>>>
    {
        private readonly ProjectDbContext db;

        /// <summary>
        /// Birden fazla türde nesneye ulaşmak isediğimiz için Dal yerine context'in kendisini alıyoruz.
        /// </summary>
        /// <param name="db"></param>
        public Handler(ProjectDbContext db)
        {
            this.db = db;
        }

        public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(Query request, CancellationToken cancellationToken)
        {
            Task<List<SelectionItem>> dataQuery;
            // Nesnenin db setini çöz. Bunu dinamik de yapabiliriz ancak şu an için taklayla uğraşmaya vakit yok.
            switch (request.LookupType)
            {
                case LookupType.User:
                    dataQuery = db.Users.Select(o => new SelectionItem(o.UserId, o.FullName)).ToListAsync();
                    break;
                case LookupType.Group:
                    dataQuery = db.Groups.Select(o => new SelectionItem(o.Id, o.GroupName)).ToListAsync();
                    break;
                case LookupType.OperationClaim:
                    dataQuery = db.OperationClaims.Select(o => new SelectionItem(o.Id, o.Name)).ToListAsync();
                    break;
                //case LookupType.District:
                //    // master anahtarindan donus yap.
                //    dataQuery = db.Districts.Where(d => d.CityId == request.ParentId.Value)
                //        .Select(o => new SelectionItem(o.Id, o.Name)).ToListAsync();
                //    break;
                //case LookupType.SportsTeam:
                //    dataQuery = db.SportsTeams.Select(o => new SelectionItem(o.Id, o.Name)).ToListAsync();
                //    break;
                default:
                    throw new ApplicationException(string.Format(Messages.UnknownLookupName, request.LookupType));
            }

            return new SuccessDataResult<IEnumerable<SelectionItem>>(await dataQuery);
        }
    }

    public enum LookupType
    {
        User,
        Group,
        OperationClaim,
    }
}
