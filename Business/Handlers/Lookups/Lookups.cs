using Core.Utilities.Results;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Dtos;
using MediatR;
using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Business.Constants;
using Microsoft.EntityFrameworkCore;

namespace Business.Handlers.Lookups
{
    public class Query : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public string SimpleLookupName { get; set; }
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
            switch (request.SimpleLookupName)
            {
                case "Category":
                    dataQuery = db.Categories.Select(o => new SelectionItem(o.CategoryId, o.CategoryName)).ToListAsync();
                    break;
                default:
                    throw new ApplicationException(string.Format(Messages.UnknownLookupName, request.SimpleLookupName));
            }

            return new DataResult<List<SelectionItem>>(await dataQuery, true);
        }
    }
}
