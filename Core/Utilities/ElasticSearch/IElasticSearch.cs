using Core.Utilities.ElasticSearch.Models;
using Core.Utilities.Results;
using Nest;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Utilities.ElasticSearch
{
    public interface IElasticSearch
    {
        Results.Result CheckIndex(string indexName);
        Results.Result CreateNewIndex(IndexModel indexModel);
        Results.Result Insert(string indexName, object item);
        Results.Result InsertMany(string indexName, object[] items);
        IReadOnlyDictionary<IndexName, IndexState> GetIndexList();
        List<T> GetAllSearch<T>(string indexName, int from = 0, int size = 10) where T : class;
        List<T> GetSearchByField<T>(string indexName, string field, string value, int from = 0, int size = 10) where T : class;

    }
}
