func @_Core.Utilities.ElasticSearch.ElasticSearchManager.CheckIndex$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :23 :8) {
^entry (%_indexName : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :23 :41)
cbde.store %_indexName, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :23 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :25 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CreateNewIndex(none), it contains poisonous unsupported syntaxes

// Skipping function GetAllSearch(none, i32, i32), it contains poisonous unsupported syntaxes

func @_Core.Utilities.ElasticSearch.ElasticSearchManager.GetIndexList$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :57 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :59 :50) // Not a variable of known type: _connectionSettings
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :59 :32) // new ElasticClient(_connectionSettings) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :19) // Not a variable of known type: elasticClient
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :19) // elasticClient.Indices (SimpleMemberAccessExpression)
// Entity from another assembly: Indices
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :65) // Indices.All (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :45) // new GetIndexRequest(Indices.All) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :19) // elasticClient.Indices.Get(new GetIndexRequest(Indices.All)) (InvocationExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :19) // elasticClient.Indices.Get(new GetIndexRequest(Indices.All)).Indices (SimpleMemberAccessExpression)
return %8 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :60 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetSearchByField(none, none, none, i32, i32), it contains poisonous unsupported syntaxes

// Skipping function GetSearchBySimpleQueryString(none, none, none, none, i32, i32), it contains poisonous unsupported syntaxes

// Skipping function Insert(none, none), it contains poisonous unsupported syntaxes

// Skipping function InsertMany(none, none), it contains poisonous unsupported syntaxes

func @_Core.Utilities.ElasticSearch.ElasticSearchManager.ControlIndexNameNullOrEmpty$string$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :131 :8) {
^entry (%_indexName : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :131 :49)
cbde.store %_indexName, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :131 :49)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :133 :16) // string (PredefinedType)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :133 :37) // Not a variable of known type: indexName
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :133 :16) // string.IsNullOrEmpty(indexName) (InvocationExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :133 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :135 :48) // Not a variable of known type: indexName
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :135 :59) // "Index name cannot be null or empty " (StringLiteralExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :135 :22) // new ArgumentNullException(indexName, "Index name cannot be null or empty ") (ObjectCreationExpression)
cbde.throw %6 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :135 :16)

^2: // ExitBlock
return

}
func @_Core.Utilities.ElasticSearch.ElasticSearchManager.GetElasticClient$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :140 :8) {
^entry (%_indexName : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :140 :47)
cbde.store %_indexName, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :140 :47)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ControlIndexNameNullOrEmpty
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :142 :40) // Not a variable of known type: indexName
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :142 :12) // ControlIndexNameNullOrEmpty(indexName) (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :143 :37) // Not a variable of known type: _connectionSettings
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :143 :19) // new ElasticClient(_connectionSettings) (ObjectCreationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\ElasticSearch\\ElasticSearchManager.cs" :143 :12)

^1: // ExitBlock
cbde.unreachable

}
