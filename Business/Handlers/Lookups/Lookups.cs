using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Concrete.EntityFramework.Contexts;
using DataAccess.Entities.Dtos;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Lookups
{
    public class Query : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public LookupType LookupType { get; set; }
        public int? UserId { get; set; }
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
        /// Birden fazla türde nesneye ulaşmak isediğimiz için Repository yerine context'in kendisini alıyoruz.
        /// </summary>
        /// <param name="db"></param>
        public Handler(ProjectDbContext db)
        {
            this.db = db;
        }

        public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(Query request, CancellationToken cancellationToken)
        {
            List<SelectionItem> dataQuery;
            // Nesnenin db setini çöz. Bunu dinamik de yapabiliriz ancak şu an için taklayla uğraşmaya vakit yok.
            switch (request.LookupType)
            {
                case LookupType.User:
                    dataQuery = await db.Users.Select(o => new SelectionItem(o.UserId, o.FullName)).ToListAsync();
                    break;
                case LookupType.Group:
                    dataQuery = await db.Groups.Select(o => new SelectionItem(o.Id, o.GroupName)).ToListAsync();
                    break;
                case LookupType.OperationClaim:
                    dataQuery = await db.OperationClaims.Select(o => new SelectionItem(o.Id, o.Name)).ToListAsync();
                    break;
                case LookupType.GroupByUserId:
                    dataQuery = await GetGroupByUserId(request.UserId.Value);
                    break;

                case LookupType.OperationClaimByUserId:
                    dataQuery = await GetOperationClaimsByUserId(request.UserId.Value);
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

            return new SuccessDataResult<IEnumerable<SelectionItem>>(dataQuery);
        }

        private async Task<List<SelectionItem>> GetGroupByUserId(int userId)
        {
            var list = await (from grp in db.Groups
                              join userGroup in db.UserGroups on grp.Id equals userGroup.GroupId
                              where userGroup.UserId == userId
                              select new SelectionItem()
                              {
                                  Id = grp.Id.ToString(),
                                  Label = grp.GroupName
                              }).ToListAsync();

            return list;
        }

        private async Task<List<SelectionItem>> GetOperationClaimsByUserId(int userId)
        {
            var list = await (from clm in db.OperationClaims
                              join usrClm in db.UserClaims on clm.Id equals usrClm.ClaimId
                              where usrClm.UserId == userId
                              select new SelectionItem()
                              {
                                  Id = clm.Id.ToString(),
                                  Label = clm.Name
                              }
                                                                                    ).ToListAsync();

            return list;
        }

    }

    public enum LookupType
    {
        User,
        Group,
        OperationClaim,
        GroupByUserId,
        OperationClaimByUserId
    }
}
