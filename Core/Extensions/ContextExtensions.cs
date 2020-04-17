using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework.Contexts
{
    public static class ContextExtensions
    {
        /// <summary>
        /// Verilen Db context içinden verilen türün Set'ini bulur ve
        /// istenen türe cast edilen bir sorgu nesnesi döner.
        /// 
        /// Verilen T türü nesne tarafından implement edilmiş olmalıdır.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="_context"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public static DbSet<T> Set<T>(this DbContext _context, Type t) where T : class
        {
            return (DbSet<T>)_context.GetType().GetMethod("Set").MakeGenericMethod(t).Invoke(_context, null);
        }

        /// <summary>
        /// DbSet nesnesini istenen cinsten (T) bir queryable olarak döner.
        /// 
        /// Burada DbContext'e eklenmiş olan nesne T türünü implement etmelidir.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="_context"></param>
        /// <param name="typeName"></param>
        /// <returns></returns>
        public static IQueryable<T> QueryableOf<T>(this DbContext _context, string typeName) where T : class
        {
            var type = _context.Model.GetEntityTypes(typeName).First();
            // once modelden gercek type'i coz
            var q = (IQueryable)_context
                .GetType()
                .GetMethod("Set")
                .MakeGenericMethod(type.ClrType)
                .Invoke(_context, null);
            return q.OfType<T>();
        }
        /// <summary>
        /// Bir DBContext, sql sorgusu ve varsa parametre alır
        /// Burada DbContext'e eklenmiş olan nesne T türünü implement etmelidir.
        /// </summary>
        /// <typeparam name="_context"></typeparam>
        /// <param name="query"></param>
        /// <param name="parameters"></param>
        /// <returns>datarow</returns>
        public static IEnumerable<Dictionary<string, object>> FwExecuteQuery(this DbContext _context, string query, params object[] parameters)
        {
            using var command = _context.Database.GetDbConnection().CreateCommand();

            command.CommandText = query;

            if (parameters.Any())
                command.Parameters.AddRange(parameters);

            if (command.Connection.State != ConnectionState.Open)
                command.Connection.Open();

            using var dataReader = command.ExecuteReader();

            var dataRow = ReadData(dataReader);

            if (command.Connection.State == ConnectionState.Open)
                command.Connection.Close();

            return dataRow;
        }
        /// <summary>
        /// Async metoddur bir DBContext, sql sorgusu ve varsa parametre alır
        /// Burada DbContext'e eklenmiş olan nesne T türünü implement etmelidir.
        /// </summary>
        /// <typeparam name="_context"></typeparam>
        /// <param name="query"></param>
        /// <param name="parameters"></param>
        /// <returns>datarow</returns>
        public static async Task<IEnumerable<Dictionary<string, object>>> FwExecuteQueryAsync(this DbContext _context, string query, params object[] parameters)
        {
            await using var command = _context.Database.GetDbConnection().CreateCommand();

            command.CommandText = query;

            if (parameters.Any())
                command.Parameters.AddRange(parameters);

            ConnectionControl(command);

            await using var dataReader = await command.ExecuteReaderAsync();

            var dataRow = ReadData(dataReader);

            IsConnectionOpen(command);

            return dataRow;
        }

        private static void IsConnectionOpen(DbCommand command)
        {
            if (command.Connection.State == ConnectionState.Open)
                command.Connection.Close();
        }

        private static void ConnectionControl(DbCommand command)
        {
            if (command.Connection.State != ConnectionState.Open)
                command.Connection.Open();
        }

        /// <summary>
        /// Datayı okur Expando Object ile özelliklerini yakalar
        /// dataliste Dictionary olarak ekler
        /// </summary>
        /// <param name="reader"></param>
        /// <returns></returns>
        private static IEnumerable<Dictionary<string, object>> ReadData(IEnumerable reader)
        {
            var dataList = new List<Dictionary<string, object>>();

            foreach (var item in reader)
            {
                IDictionary<string, object> expando = new ExpandoObject();

                foreach (PropertyDescriptor propertyDescriptor in TypeDescriptor.GetProperties(item))
                {
                    var obj = propertyDescriptor.GetValue(item);
                    expando.Add(propertyDescriptor.Name, obj);
                }

                dataList.Add(new Dictionary<string, object>(expando));
            }

            return dataList;
        }
    }
}
