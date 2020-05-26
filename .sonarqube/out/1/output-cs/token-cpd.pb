Ù
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\ApiDoc\AddAuthHeaderOperationFilter.cs
	namespace 	
Core
 
{ 
internal 	
class
 (
AddAuthHeaderOperationFilter ,
:- .
IOperationFilter/ ?
{ 
public 

void 
Apply 
( 
OpenApiOperation &
	operation' 0
,0 1"
OperationFilterContext2 H
contextI P
)P Q
{ 
var 	
isAuthorized
 
= 
( 
context !
.! "

MethodInfo" ,
., -
DeclaringType- :
.: ;
GetCustomAttributes; N
(N O
trueO S
)S T
.T U
OfTypeU [
<[ \
AuthorizeAttribute\ n
>n o
(o p
)p q
.q r
Anyr u
(u v
)v w
|| 
context $
.$ %

MethodInfo% /
./ 0
GetCustomAttributes0 C
(C D
trueD H
)H I
.I J
OfTypeJ P
<P Q
AuthorizeAttributeQ c
>c d
(d e
)e f
.f g
Anyg j
(j k
)k l
)l m
&& 
! 
context %
.% &

MethodInfo& 0
.0 1
GetCustomAttributes1 D
(D E
trueE I
)I J
.J K
OfTypeK Q
<Q R#
AllowAnonymousAttributeR i
>i j
(j k
)k l
.l m
Anym p
(p q
)q r
;r s
if 
(	 

!
 
isAuthorized 
) 
return 
;  
	operation 
. 
	Responses 
. 
Add 
( 
$str #
,# $
new% (
OpenApiResponse) 8
{9 :
Description; F
=G H
$strI W
}X Y
)Y Z
;Z [
	operation 
. 
	Responses 
. 
Add 
( 
$str #
,# $
new% (
OpenApiResponse) 8
{9 :
Description; F
=G H
$strI T
}U V
)V W
;W X
var 	
jwtbearerScheme
 
= 
new !
OpenApiSecurityScheme  5
{ 
	Reference 
= 
new 
OpenApiReference (
{) *
Type+ /
=0 1
ReferenceType2 ?
.? @
SecurityScheme@ N
,N O
IdP R
=S T
$strU ]
}^ _
} 
; 
	operation 
. 
Security 
= 
new 
List #
<# $&
OpenApiSecurityRequirement$ >
>> ?
{ 
new   &
OpenApiSecurityRequirement   .
{  / 0
[  1 2
jwtbearerScheme  2 A
]  A B
=  C D
new  E H
string  I O
[  P Q
]  Q R
{  R S
}  S T
}  U V
}!! 
;!! 
}"" 
}## 
}$$ ù
NE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\ApiDoc\EnumSchemaFilter.cs
	namespace 	
Core
 
{		 
internal 

class 
EnumSchemaFilter !
:" #
ISchemaFilter$ 1
{ 
public 

void 
Apply 
( 
OpenApiSchema #
schema$ *
,* +
SchemaFilterContext, ?
context@ G
)G H
{ 
if 
(	 

context
 
. 
Type 
. 
IsEnum 
) 
{ 
var 

enumValues 
= 
schema 
.  
Enum  $
.$ %
ToArray% ,
(, -
)- .
;. /
var 
i 
= 
$num 
; 
schema 
. 
Enum 
. 
Clear 
( 
) 
; 
foreach 
( 
var 
n 
in 
Enum 
. 
GetNames '
(' (
context( /
./ 0
Type0 4
)4 5
.5 6
ToList6 <
(< =
)= >
)> ?
{ 	
schema
 
. 
Enum 
. 
Add 
( 
new 
OpenApiString +
(+ ,
n, -
)- .
). /
;/ 0
schema
 
. 
Title 
= 
( 
( 
OpenApiPrimitive +
<+ ,
int, /
>/ 0
)0 1

enumValues1 ;
[; <
i< =
]= >
)> ?
.? @
Value@ E
.E F
ToStringF N
(N O
)O P
;P Q
i
 
++ 
; 
} 	
} 
} 
} 
} ä
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Caching\CacheAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
Caching &
{		 
public 
class	 
CacheAspect 
: 
MethodInterception /
{ 
private 
readonly 
int 
	_duration "
;" #
private 
readonly 
ICacheManager "
_cacheManager# 0
;0 1
public 

CacheAspect 
( 
int 
duration #
=$ %
$num& (
)( )
{ 
	_duration 
= 
duration 
; 
_cacheManager 
= 
ServiceTool !
.! "
ServiceProvider" 1
.1 2

GetService2 <
<< =
ICacheManager= J
>J K
(K L
)L M
;M N
} 
public 

override 
void 
	Intercept "
(" #
IInvocation# .

invocation/ 9
)9 :
{ 
var 	

methodName
 
= 
string 
. 
Format $
($ %
$"% '
{' (

invocation( 2
.2 3
Method3 9
.9 :
ReflectedType: G
.G H
FullNameH P
}P Q
.Q R
{R S

invocationS ]
.] ^
Method^ d
.d e
Namee i
}i j
"j k
)k l
;l m
var 	
	arguments
 
= 

invocation  
.  !
	Arguments! *
.* +
ToList+ 1
(1 2
)2 3
;3 4
var 	
key
 
= 
$" 
{ 

methodName 
} 
( 
{  
string  &
.& '
Join' +
(+ ,
$str, /
,/ 0
	arguments1 :
.: ;
Select; A
(A B
xB C
=>D F
xG H
?H I
.I J
ToStringJ R
(R S
)S T
??U W
$strX `
)` a
)a b
}b c
)c d
"d e
;e f
if 
(	 

_cacheManager
 
. 
IsAdd 
( 
key !
)! "
)" #
{ 

invocation 
. 
ReturnValue 
=  
_cacheManager! .
.. /
Get/ 2
(2 3
key3 6
)6 7
;7 8
return 
; 
} 

invocation   
.   
Proceed   
(   
)   
;   
_cacheManager!! 
.!! 
Add!! 
(!! 
key!! 
,!! 

invocation!! '
.!!' (
ReturnValue!!( 3
,!!3 4
	_duration!!5 >
)!!> ?
;!!? @
}"" 
}## 
}$$ †
`E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Caching\CacheRemoveAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
Caching &
{ 
public 
class	 
CacheRemoveAspect  
:! "
MethodInterception# 5
{ 
private 
readonly 
string 
_pattern $
;$ %
private 
readonly 
ICacheManager "
_cacheManager# 0
;0 1
public 

CacheRemoveAspect 
( 
string #
pattern$ +
)+ ,
{ 
_pattern 
= 
pattern 
; 
_cacheManager 
= 
ServiceTool !
.! "
ServiceProvider" 1
.1 2

GetService2 <
<< =
ICacheManager= J
>J K
(K L
)L M
;M N
} 
	protected 
override 
void 
	OnSuccess %
(% &
IInvocation& 1

invocation2 <
)< =
{ 
_cacheManager 
. 
RemoveByPattern #
(# $
_pattern$ ,
), -
;- .
} 
} 
} ®&
cE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Exception\ExceptionLogAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
	Exception (
{ 
public 

class 
ExceptionLogAspect #
:$ %
MethodInterception& 8
{ 
private 
readonly 
LoggerServiceBase *
_loggerServiceBase+ =
;= >
public 
ExceptionLogAspect !
(! "
Type" &
loggerService' 4
)4 5
{ 	
if 
( 
loggerService 
. 
BaseType &
!=' )
typeof* 0
(0 1
LoggerServiceBase1 B
)B C
)C D
{ 
throw 
new 
ArgumentException +
(+ ,
AspectMessages, :
.: ;
WrongLoggerType; J
)J K
;K L
} 
_loggerServiceBase 
=  
(! "
LoggerServiceBase" 3
)3 4
ServiceTool4 ?
.? @
ServiceProvider@ O
.O P

GetServiceP Z
(Z [
loggerService[ h
)h i
;i j
} 	
	protected 
override 
void 
OnException  +
(+ ,
IInvocation, 7

invocation8 B
,B C
SystemD J
.J K
	ExceptionK T
eU V
)V W
{ 	"
LogDetailWithException   ""
logDetailWithException  # 9
=  : ;
GetLogDetail  < H
(  H I

invocation  I S
)  S T
;  T U
if"" 
("" 
e"" 
is"" 
AggregateException"" '
)""' ("
logDetailWithException## &
.##& '
ExceptionMessage##' 7
=##8 9
string$$ 
.$$ 
Join$$ 
($$ 
Environment$$ )
.$$) *
NewLine$$* 1
,$$1 2
($$3 4
e$$4 5
as$$6 8
AggregateException$$9 K
)$$K L
.$$L M
InnerExceptions$$M \
.$$\ ]
Select$$] c
($$c d
x$$d e
=>$$f h
x$$i j
.$$j k
Message$$k r
)$$r s
)$$s t
;$$t u
else%% "
logDetailWithException&& &
.&&& '
ExceptionMessage&&' 7
=&&8 9
e&&: ;
.&&; <
Message&&< C
;&&C D
_loggerServiceBase'' 
.'' 
Error'' $
(''$ %"
logDetailWithException''% ;
)''; <
;''< =
}(( 	
private** "
LogDetailWithException** &
GetLogDetail**' 3
(**3 4
IInvocation**4 ?

invocation**@ J
)**J K
{++ 	
var,, 
logParameters,, 
=,, 
new,,  #
List,,$ (
<,,( )
LogParameter,,) 5
>,,5 6
(,,6 7
),,7 8
;,,8 9
for-- 
(-- 
int-- 
i-- 
=-- 
$num-- 
;-- 
i-- 
<-- 

invocation--  *
.--* +
	Arguments--+ 4
.--4 5
Length--5 ;
;--; <
i--= >
++--> @
)--@ A
{.. 
logParameters// 
.// 
Add// !
(//! "
new//" %
LogParameter//& 2
{00 
Name11 
=11 

invocation11 %
.11% &
GetConcreteMethod11& 7
(117 8
)118 9
.119 :
GetParameters11: G
(11G H
)11H I
[11I J
i11J K
]11K L
.11L M
Name11M Q
,11Q R
Value22 
=22 

invocation22 &
.22& '
	Arguments22' 0
[220 1
i221 2
]222 3
,223 4
Type33 
=33 

invocation33 %
.33% &
	Arguments33& /
[33/ 0
i330 1
]331 2
.332 3
GetType333 :
(33: ;
)33; <
.33< =
Name33= A
}44 
)44 
;44 
}55 
var66 "
logDetailWithException66 &
=66' (
new66) ,"
LogDetailWithException66- C
{77 

MethodName88 
=88 

invocation88 '
.88' (
Method88( .
.88. /
Name88/ 3
,883 4

Parameters99 
=99 
logParameters99 *
}:: 
;:: 
return;; "
logDetailWithException;; )
;;;) *
}<< 	
}== 
}>> ≥
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Logging\LogAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
Logging &
{ 
public 

class 
	LogAspect 
: 
MethodInterception /
{ 
private 
readonly 
LoggerServiceBase *
_loggerServiceBase+ =
;= >
public 
	LogAspect 
( 
Type 
loggerService +
)+ ,
{ 	
if 
( 
loggerService 
. 
BaseType &
!=' )
typeof* 0
(0 1
LoggerServiceBase1 B
)B C
)C D
{ 
throw 
new 
ArgumentException +
(+ ,
AspectMessages, :
.: ;
WrongLoggerType; J
)J K
;K L
} 
_loggerServiceBase 
=  
(! "
LoggerServiceBase" 3
)3 4
ServiceTool4 ?
.? @
ServiceProvider@ O
.O P

GetServiceP Z
(Z [
loggerService[ h
)h i
;i j
} 	
	protected 
override 
void 
OnBefore  (
(( )
IInvocation) 4

invocation5 ?
)? @
{ 	
_loggerServiceBase 
. 
Info #
(# $
GetLogDetail$ 0
(0 1

invocation1 ;
); <
)< =
;= >
}   	
private"" 
	LogDetail"" 
GetLogDetail"" &
(""& '
IInvocation""' 2

invocation""3 =
)""= >
{## 	
var$$ 
logParameters$$ 
=$$ 
new$$  #
List$$$ (
<$$( )
LogParameter$$) 5
>$$5 6
($$6 7
)$$7 8
;$$8 9
for%% 
(%% 
int%% 
i%% 
=%% 
$num%% 
;%% 
i%% 
<%% 

invocation%%  *
.%%* +
	Arguments%%+ 4
.%%4 5
Length%%5 ;
;%%; <
i%%= >
++%%> @
)%%@ A
{&& 
logParameters'' 
.'' 
Add'' !
(''! "
new''" %
LogParameter''& 2
{(( 
Name)) 
=)) 

invocation)) %
.))% &
GetConcreteMethod))& 7
())7 8
)))8 9
.))9 :
GetParameters)): G
())G H
)))H I
[))I J
i))J K
]))K L
.))L M
Name))M Q
,))Q R
Value** 
=** 

invocation** &
.**& '
	Arguments**' 0
[**0 1
i**1 2
]**2 3
,**3 4
Type++ 
=++ 

invocation++ %
.++% &
	Arguments++& /
[++/ 0
i++0 1
]++1 2
.++2 3
GetType++3 :
(++: ;
)++; <
.++< =
Name++= A
}-- 
)-- 
;-- 
}.. 
var// 
	logDetail// 
=// 
new// 
	LogDetail//  )
{00 

MethodName11 
=11 

invocation11 '
.11' (
Method11( .
.11. /
Name11/ 3
,113 4

Parameters22 
=22 
logParameters22 *
,22* +
}44 
;44 
return55 
	logDetail55 
;55 
}66 	
}77 
}88 Â
dE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Performance\PerformanceAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
Performance *
{ 
public 
class	 
PerformanceAspect  
:! "
MethodInterception# 5
{ 
private 
readonly 
int 
	_interval "
;" #
private 
readonly 
	Stopwatch 

_stopwatch )
;) *
public 

PerformanceAspect 
( 
int  
interval! )
)) *
{ 
	_interval 
= 
interval 
; 

_stopwatch 
= 
ServiceTool 
. 
ServiceProvider .
.. /

GetService/ 9
<9 :
	Stopwatch: C
>C D
(D E
)E F
;F G
} 
	protected 
override 
void 
OnBefore $
($ %
IInvocation% 0

invocation1 ;
); <
{ 

_stopwatch 
. 
Start 
( 
) 
; 
} 
	protected 
override 
void 
OnAfter #
(# $
IInvocation$ /

invocation0 :
): ;
{ 
if 
(	 


_stopwatch
 
. 
Elapsed 
. 
TotalSeconds )
>* +
	_interval, 5
)5 6
{ 
Debug   
.   
	WriteLine   
(   
$"   
Performance:    '
{  ' (

invocation  ( 2
.  2 3
Method  3 9
.  9 :
DeclaringType  : G
.  G H
FullName  H P
}  P Q
.  Q R
{  R S

invocation  S ]
.  ] ^
Method  ^ d
.  d e
Name  e i
}  i j
-->  j m
{  m n

_stopwatch  n x
.  x y
Elapsed	  y Ä
.
  Ä Å
TotalSeconds
  Å ç
}
  ç é
"
  é è
)
  è ê
;
  ê ë
}!! 

_stopwatch"" 
."" 
Reset"" 
("" 
)"" 
;"" 
}## 
}$$ 
}%% Ä
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Transaction\TransactionScopeAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 
Transaction *
{ 
public

 

class

 "
TransactionScopeAspect

 '
:

( )
MethodInterception

* <
{ 
public 
override 
void 
	Intercept &
(& '
IInvocation' 2

invocation3 =
)= >
{ 	
using 
( 
TransactionScope #
transactionScope$ 4
=5 6
new7 :
TransactionScope; K
(K L
)L M
)M N
{ 
try 
{ 

invocation 
. 
Proceed &
(& '
)' (
;( )
transactionScope $
.$ %
Complete% -
(- .
). /
;/ 0
} 
catch 
( 
System 
. 
	Exception '
ex( *
)* +
{ 
ex 
. 
ToString 
(  
)  !
;! "
throw 
; 
} 
} 
} 	
} 
} §
bE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Aspects\Autofac\Validation\ValidationAspect.cs
	namespace

 	
Core


 
.

 
Aspects

 
.

 
Autofac

 
.

 

Validation

 )
{ 
public 

class 
ValidationAspect !
:" #
MethodInterception$ 6
{ 
private 
readonly 
Type 
_validatorType ,
;, -
public 
ValidationAspect 
(  
Type  $
validatorType% 2
)2 3
{ 	
if 
( 
! 
typeof 
( 

IValidator "
)" #
.# $
IsAssignableFrom$ 4
(4 5
validatorType5 B
)B C
)C D
{ 
throw 
new 
ArgumentException +
(+ ,
AspectMessages, :
.: ;
WrongValidationType; N
)N O
;O P
} 
_validatorType 
= 
validatorType *
;* +
} 	
	protected 
override 
void 
OnBefore  (
(( )
IInvocation) 4

invocation5 ?
)? @
{ 	
var 
	validator 
= 
( 

IValidator '
)' (
	Activator( 1
.1 2
CreateInstance2 @
(@ A
_validatorTypeA O
)O P
;P Q
var 

entityType 
= 
_validatorType +
.+ ,
BaseType, 4
.4 5
GetGenericArguments5 H
(H I
)I J
[J K
$numK L
]L M
;M N
var 
entities 
= 

invocation %
.% &
	Arguments& /
./ 0
Where0 5
(5 6
t6 7
=>8 :
t; <
.< =
GetType= D
(D E
)E F
==G I

entityTypeJ T
)T U
;U V
foreach 
( 
var 
entity 
in  "
entities# +
)+ ,
{   
ValidationTool!! 
.!! 
Validate!! '
(!!' (
	validator!!( 1
,!!1 2
entity!!3 9
)!!9 :
;!!: ;
}"" 
}## 	
}$$ 
}%% «	
aE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Caching\ICacheManager.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Caching$ +
{ 
public

 
	interface

	 
ICacheManager

  
{ 
T 
Get 	
<	 

T
 
> 
( 
string 
key 
) 
; 
object 

Get 
( 
string 
key 
) 
; 
void 
Add	 
( 
string 
key 
, 
object 
data  $
,$ %
int& )
duration* 2
)2 3
;3 4
bool 
IsAdd	 
( 
string 
key 
) 
; 
void 
Remove	 
( 
string 
key 
) 
; 
void 
RemoveByPattern	 
( 
string 
pattern  '
)' (
;( )
} 
} Ç/
pE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Caching\Microsoft\MemoryCacheManager.cs
	namespace

 	
Core


 
.

  
CrossCuttingConcerns

 #
.

# $
Caching

$ +
.

+ ,
	Microsoft

, 5
{ 
public 
class	 
MemoryCacheManager !
:" #
ICacheManager$ 1
{ 
private 
readonly 
IMemoryCache !
_cache" (
;( )
public 

MemoryCacheManager 
( 
) 
:  !
this" &
(& '
ServiceTool' 2
.2 3
ServiceProvider3 B
.B C

GetServiceC M
<M N
IMemoryCacheN Z
>Z [
([ \
)\ ]
)] ^
{ 
} 
public 

MemoryCacheManager 
( 
IMemoryCache *
cache+ 0
)0 1
{ 
_cache 
= 
cache 
; 
} 
public 

void 
Add 
( 
string 
key 
, 
object  &
data' +
,+ ,
int- 0
duration1 9
)9 :
{ 
_cache 
. 
Set 
( 
key 
, 
data 
, 
TimeSpan $
.$ %
FromMinutes% 0
(0 1
duration1 9
)9 :
): ;
;; <
} 
public 

T 
Get 
< 
T 
> 
( 
string 
key 
) 
{ 
return   
_cache   
.   
Get   
<   
T   
>   
(   
key   
)   
;    
}!! 
public## 

object## 
Get## 
(## 
string## 
key##  
)##  !
{$$ 
return%% 
_cache%% 
.%% 
Get%% 
(%% 
key%% 
)%% 
;%% 
}&& 
public(( 

bool(( 
IsAdd(( 
((( 
string(( 
key((  
)((  !
{)) 
return** 
_cache** 
.** 
TryGetValue** 
(**  
key**  #
,**# $
out**% (
_**) *
)*** +
;**+ ,
}++ 
public-- 

void-- 
Remove-- 
(-- 
string-- 
key-- !
)--! "
{.. 
_cache// 
.// 
Remove// 
(// 
key// 
)// 
;// 
}00 
public22 

void22 
RemoveByPattern22 
(22  
string22  &
pattern22' .
)22. /
{33 
var44 	,
 cacheEntriesCollectionDefinition44
 *
=44+ ,
typeof44- 3
(443 4
MemoryCache444 ?
)44? @
.44@ A
GetProperty44A L
(44L M
$str44M `
,44` a
BindingFlags55	 
.55 
	NonPublic55 
|55  !
BindingFlags55" .
.55. /
Instance55/ 7
)557 8
;558 9
var66 	"
cacheEntriesCollection66
  
=66! ",
 cacheEntriesCollectionDefinition66# C
.66C D
GetValue66D L
(66L M
_cache66M S
)66S T
as66U W
dynamic66X _
;66_ `
List88 

<88
 
ICacheEntry88 
>88 !
cacheCollectionValues88 -
=88. /
new880 3
List884 8
<888 9
ICacheEntry889 D
>88D E
(88E F
)88F G
;88G H
foreach:: 
(:: 
var:: 
	cacheItem:: 
in:: "
cacheEntriesCollection::  6
)::6 7
{;; 
ICacheEntry<< 
cacheItemValue<< "
=<<# $
	cacheItem<<% .
.<<. /
GetType<</ 6
(<<6 7
)<<7 8
.<<8 9
GetProperty<<9 D
(<<D E
$str<<E L
)<<L M
.<<M N
GetValue<<N V
(<<V W
	cacheItem<<W `
,<<` a
null<<b f
)<<f g
;<<g h!
cacheCollectionValues== 
.== 
Add== !
(==! "
cacheItemValue==" 0
)==0 1
;==1 2
}>> 
var@@ 	
regex@@
 
=@@ 
new@@ 
Regex@@ 
(@@ 
pattern@@ #
,@@# $
RegexOptions@@% 1
.@@1 2

Singleline@@2 <
|@@= >
RegexOptions@@? K
.@@K L
Compiled@@L T
|@@U V
RegexOptions@@W c
.@@c d

IgnoreCase@@d n
)@@n o
;@@o p
varAA 	
keysToRemoveAA
 
=AA !
cacheCollectionValuesAA .
.AA. /
WhereAA/ 4
(AA4 5
dAA5 6
=>AA7 9
regexAA: ?
.AA? @
IsMatchAA@ G
(AAG H
dAAH I
.AAI J
KeyAAJ M
.AAM N
ToStringAAN V
(AAV W
)AAW X
)AAX Y
)AAY Z
.AAZ [
SelectAA[ a
(AAa b
dAAb c
=>AAd f
dAAg h
.AAh i
KeyAAi l
)AAl m
.AAm n
ToListAAn t
(AAt u
)AAu v
;AAv w
foreachBB 
(BB 
varBB 
keyBB 
inBB 
keysToRemoveBB &
)BB& '
{CC 
_cacheDD 
.DD 
RemoveDD 
(DD 
keyDD 
)DD 
;DD 
}EE 
}FF 
}GG 
}HH ¸&
kE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Caching\Redis\RedisCacheManager.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Caching$ +
.+ ,
Redis, 1
{ 
public 
class	 
RedisCacheManager  
:! "
ICacheManager# 0
{ 
private 
readonly 
RedisEndpoint "
_redisEndpoint# 1
;1 2
private 
void 
RedisInvoker 
( 
Action $
<$ %
RedisClient% 0
>0 1
redisAction2 =
)= >
{ 
using 
( 
var 
client 
= 
new 
RedisClient )
() *
_redisEndpoint* 8
)8 9
)9 :
{ 
redisAction 
. 
Invoke 
( 
client !
)! "
;" #
} 
} 
public 

RedisCacheManager 
( 
) 
{ 
_redisEndpoint 
= 
new 
RedisEndpoint (
(( )
$str) 4
,4 5
$num6 :
): ;
;; <
} 
public 

T 
Get 
< 
T 
> 
( 
string 
key 
) 
{ 
var 	
result
 
= 
default 
( 
T 
) 
; 
RedisInvoker 
( 
x 
=> 
{ 
result  
=! "
x# $
.$ %
Get% (
<( )
T) *
>* +
(+ ,
key, /
)/ 0
;0 1
}2 3
)3 4
;4 5
return   
result   
;   
}!! 
public## 

object## 
Get## 
(## 
string## 
key##  
)##  !
{$$ 
var%% 	
result%%
 
=%% 
default%% 
(%% 
object%% !
)%%! "
;%%" #
RedisInvoker&& 
(&& 
x&& 
=>&& 
{&& 
result&&  
=&&! "
x&&# $
.&&$ %
Get&&% (
<&&( )
object&&) /
>&&/ 0
(&&0 1
key&&1 4
)&&4 5
;&&5 6
}&&7 8
)&&8 9
;&&9 :
return'' 
result'' 
;'' 
}(( 
public** 

void** 
Add** 
(** 
string** 
key** 
,** 
object**  &
data**' +
,**+ ,
int**- 0
duration**1 9
)**9 :
{++ 
RedisInvoker,, 
(,, 
x,, 
=>,, 
x,, 
.,, 
Add,, 
(,, 
key,, !
,,,! "
data,,# '
,,,' (
TimeSpan,,) 1
.,,1 2
FromMinutes,,2 =
(,,= >
duration,,> F
),,F G
),,G H
),,H I
;,,I J
}-- 
public// 

bool// 
IsAdd// 
(// 
string// 
key//  
)//  !
{00 
var11 	
isAdded11
 
=11 
false11 
;11 
RedisInvoker22 
(22 
x22 
=>22 
isAdded22 
=22  !
x22" #
.22# $
ContainsKey22$ /
(22/ 0
key220 3
)223 4
)224 5
;225 6
return33 
isAdded33 
;33 
}44 
public66 

void66 
Remove66 
(66 
string66 
key66 !
)66! "
{77 
RedisInvoker88 
(88 
x88 
=>88 
x88 
.88 
Remove88  
(88  !
key88! $
)88$ %
)88% &
;88& '
}99 
public;; 

void;; 
RemoveByPattern;; 
(;;  
string;;  &
pattern;;' .
);;. /
{<< 
RedisInvoker== 
(== 
x== 
=>== 
x== 
.== 
RemoveByPattern== )
(==) *
pattern==* 1
)==1 2
)==2 3
;==3 4
}>> 
public@@ 

void@@ 
Clear@@ 
(@@ 
)@@ 
{AA 
RedisInvokerBB 
(BB 
xBB 
=>BB 
xBB 
.BB 
FlushAllBB "
(BB" #
)BB# $
)BB$ %
;BB% &
}CC 
}DD 
}EE ë
nE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\Log4Net\Layouts\JsonLayout.cs
	namespace		 	
Core		
 
.		  
CrossCuttingConcerns		 #
.		# $
Logging		$ +
.		+ ,
Log4Net		, 3
.		3 4
Layouts		4 ;
{

 
public 
class	 

JsonLayout 
: 
LayoutSkeleton *
{ 
public 

override 
void 
ActivateOptions (
(( )
)) *
{ 
} 
public 

override 
void 
Format 
(  

TextWriter  *
writer+ 1
,1 2
LoggingEvent3 ?
loggingEvent@ L
)L M
{ 
var 	
logEvent
 
= 
new  
SerializableLogEvent -
(- .
loggingEvent. :
): ;
;; <
var 	
json
 
= 
JsonConvert 
. 
SerializeObject ,
(, -
logEvent- 5
,5 6

Formatting7 A
.A B
NoneB F
)F G
;G H
writer 
. 
	WriteLine 
( 
json 
) 
; 
} 
} 
} ˜#
mE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\Log4Net\LoggerServiceBase.cs
	namespace

 	
Core


 
.

  
CrossCuttingConcerns

 #
.

# $
Logging

$ +
.

+ ,
Log4Net

, 3
{ 
public 

class 
LoggerServiceBase "
{ 
private 
readonly 
ILog 
_log "
;" #
public 
LoggerServiceBase  
(  !
string! '
name( ,
), -
{ 	
XmlDocument 
xmlDocument #
=$ %
new& )
XmlDocument* 5
(5 6
)6 7
;7 8
xmlDocument 
. 
Load 
( 
File !
.! "
OpenRead" *
(* +
$str+ ;
); <
)< =
;= >
ILoggerRepository 
loggerRepository .
=/ 0

LogManager1 ;
.; <
CreateRepository< L
(L M
AssemblyM U
.U V 
GetExecutingAssemblyV j
(j k
)k l
,l m
typeofn t
(t u
log4netu |
.| }

Repository	} á
.
á à
	Hierarchy
à ë
.
ë í
	Hierarchy
í õ
)
õ ú
)
ú ù
;
ù û
log4net 
. 
Config 
. 
XmlConfigurator *
.* +
	Configure+ 4
(4 5
loggerRepository5 E
,E F
xmlDocumentG R
[R S
$strS \
]\ ]
)] ^
;^ _
_log 
= 

LogManager 
. 
	GetLogger '
(' (
loggerRepository( 8
.8 9
Name9 =
,= >
name? C
)C D
;D E
} 	
public 
bool 
IsInfoEnabled !
=>" $
_log% )
.) *
IsInfoEnabled* 7
;7 8
public 
bool 
IsDebugEnabled "
=># %
_log& *
.* +
IsDebugEnabled+ 9
;9 :
public 
bool 
IsWarnEnabled !
=>" $
_log% )
.) *
IsWarnEnabled* 7
;7 8
public 
bool 
IsFatalEnabled "
=># %
_log& *
.* +
IsFatalEnabled+ 9
;9 :
public 
bool 
IsErrorEnabled "
=># %
_log& *
.* +
IsErrorEnabled+ 9
;9 :
public 
void 
Info 
( 
object 

logMessage  *
)* +
{   	
if!! 
(!! 
IsInfoEnabled!! 
)!! 
_log"" 
."" 
Info"" 
("" 

logMessage"" $
)""$ %
;""% &
}## 	
public$$ 
void$$ 
Debug$$ 
($$ 
object$$  

logMessage$$! +
)$$+ ,
{%% 	
if&& 
(&& 
IsDebugEnabled&& 
)&& 
_log'' 
.'' 
Info'' 
('' 

logMessage'' $
)''$ %
;''% &
}(( 	
public)) 
void)) 
Warn)) 
()) 
object)) 

logMessage))  *
)))* +
{** 	
if++ 
(++ 
IsWarnEnabled++ 
)++ 
_log,, 
.,, 
Info,, 
(,, 

logMessage,, $
),,$ %
;,,% &
}-- 	
public.. 
void.. 
Fatal.. 
(.. 
object..  

logMessage..! +
)..+ ,
{// 	
if00 
(00 
IsFatalEnabled00 
)00 
_log11 
.11 
Info11 
(11 

logMessage11 $
)11$ %
;11% &
}22 	
public33 
void33 
Error33 
(33 
object33  

logMessage33! +
)33+ ,
{44 	
if55 
(55 
IsErrorEnabled55 
)55 
_log66 
.66 
Info66 
(66 

logMessage66 $
)66$ %
;66% &
}77 	
}88 
}99 û
rE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\Log4Net\Loggers\DatabaseLogger.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
Log4Net, 3
.3 4
Loggers4 ;
{ 
public 
class	 
DatabaseLogger 
: 
LoggerServiceBase  1
{ 
public 

DatabaseLogger 
( 
) 
: 
base "
(" #
$str# 3
)3 4
{ 
} 
} 
}		 í
nE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\Log4Net\Loggers\FileLogger.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
Log4Net, 3
.3 4
Loggers4 ;
{ 
public 
class	 

FileLogger 
: 
LoggerServiceBase -
{ 
public 


FileLogger 
( 
) 
: 
base 
( 
$str /
)/ 0
{ 
} 
} 
}		 æ
pE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\Log4Net\SerializableLogEvent.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
Log4Net, 3
{ 
[ 
Serializable 
] 
public		 
class			  
SerializableLogEvent		 #
{

 
private 
LoggingEvent 
_loggingEvent &
;& '
public 
 
SerializableLogEvent 
(  
LoggingEvent  ,
loggingEvent- 9
)9 :
{ 
_loggingEvent 
= 
loggingEvent "
;" #
} 
public 

object 
Message 
=> 
_loggingEvent *
.* +
MessageObject+ 8
;8 9
} 
} ﬂ
]E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\LogDetail.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
{ 
public 
class	 
	LogDetail 
{ 
public 

string 
FullName 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 

MethodName 
{ 
get "
;" #
set$ '
;' (
}) *
public		 

List		 
<		 
LogParameter		 
>		 

Parameters		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
}

 
} µ
jE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\LogDetailWithException.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
{ 
public 
class	 "
LogDetailWithException %
:& '
	LogDetail( 1
{ 
public 

string 
ExceptionMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} †
`E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\LogParameter.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
{ 
public 
class	 
LogParameter 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

object 
Value 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
Type 
{ 
get 
; 
set !
;! "
}# $
}		 
}

 Ö
yE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\NLog\Layouts\CustomJsonLayoutRenderer.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
NLog, 0
.0 1
Layouts1 8
{		 
[

 
LayoutRenderer

 
(

 
$str

 
)

 
]

  
public 
class	 $
CustomJsonLayoutRenderer '
:( )
LayoutRenderer* 8
{ 
	protected 
override 
void 
Append "
(" #
StringBuilder# 0
builder1 8
,8 9
LogEventInfo: F
logEventG O
)O P
{ 
var 	
logEventInfo
 
= 
new  
SerializableLogEvent 1
(1 2
logEvent2 :
): ;
;; <
var 	
json
 
= 
JsonConvert 
. 
SerializeObject ,
(, -
logEventInfo- 9
,9 :

Formatting; E
.E F
NoneF J
)J K
;K L
builder 
. 

AppendLine 
( 
json 
) 
; 
} 
} 
} 
jE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\NLog\LoggerServiceBase.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
NLog, 0
{ 
public		 
class			 
LoggerServiceBase		  
{

 
private 
readonly 
ILogger 
_logger $
;$ %
public 

LoggerServiceBase 
( 
) 
{ 
} 
public 

LoggerServiceBase 
( 
string #
name$ (
)( )
{ 
LayoutRenderer 
. 
Register 
( 
$str *
,* +
typeof, 2
(2 3$
CustomJsonLayoutRenderer3 K
)K L
)L M
;M N
_logger 
= 
NLogBuilder 
. 
ConfigureNLog )
() *
$str* 7
)7 8
.8 9
	GetLogger9 B
(B C
nameC G
)G H
;H I
} 
public 

bool 
IsInfoEnabled 
=>  
_logger! (
.( )
IsInfoEnabled) 6
;6 7
public 

bool 
IsDebugEnabled 
=> !
_logger" )
.) *
IsDebugEnabled* 8
;8 9
public 

bool 
IsWarnEnabled 
=>  
_logger! (
.( )
IsWarnEnabled) 6
;6 7
public 

bool 
IsFatalEnabled 
=> !
_logger" )
.) *
IsFatalEnabled* 8
;8 9
public 

bool 
IsErrorEnabled 
=> !
_logger" )
.) *
IsErrorEnabled* 8
;8 9
public 

void 
Info 
( 
object 

logMessage &
)& '
{   
if!! 
(!!	 

IsInfoEnabled!!
 
)!! 
_logger"" 
."" 
Info"" 
("" 

logMessage"" 
)""  
;""  !
}## 
public%% 

void%% 
Debug%% 
(%% 
object%% 

logMessage%% '
)%%' (
{&& 
if'' 
(''	 

IsDebugEnabled''
 
)'' 
_logger(( 
.(( 
Debug(( 
((( 

logMessage((  
)((  !
;((! "
})) 
public++ 

void++ 
Warn++ 
(++ 
object++ 

logMessage++ &
)++& '
{,, 
if-- 
(--	 

IsWarnEnabled--
 
)-- 
_logger.. 
... 
Warn.. 
(.. 

logMessage.. 
)..  
;..  !
}// 
public11 

void11 
Fatal11 
(11 
object11 

logMessage11 '
)11' (
{22 
if33 
(33	 

IsFatalEnabled33
 
)33 
_logger44 
.44 
Fatal44 
(44 

logMessage44  
)44  !
;44! "
}55 
public77 

void77 
Error77 
(77 
object77 

logMessage77 '
)77' (
{88 
if99 
(99	 

IsErrorEnabled99
 
)99 
_logger:: 
.:: 
Error:: 
(:: 

logMessage::  
)::  !
;::! "
};; 
}<< 
}== §
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\NLog\Loggers\DbLogger.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
NLog, 0
.0 1
Loggers1 8
{ 
public 
class	 
DbLogger 
: 
LoggerServiceBase +
{ 
public		 

DbLogger		 
(		 
IConfiguration		 "
configuration		# 0
)		0 1
: 
base 
( 
configuration 
. 

GetSection %
(% &
$str& /
)/ 0
.0 1
GetValue1 9
<9 :
string: @
>@ A
(A B
$strB S
)S T
)T U
{ 
} 
} 
} å
kE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\NLog\Loggers\FileLogger.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
NLog, 0
.0 1
Loggers1 8
{ 
public 
class	 

FileLogger 
: 
LoggerServiceBase -
{ 
public 


FileLogger 
( 
) 
: 
base 
( 
$str /
)/ 0
{ 
}

 
} 
} Ø
mE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Logging\NLog\SerializableLogEvent.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $
Logging$ +
.+ ,
NLog, 0
{ 
public 
class	  
SerializableLogEvent #
{ 
private 
readonly 
LogEventInfo !
	_logEvent" +
;+ ,
public		 
 
SerializableLogEvent		 
(		  
LogEventInfo		  ,
logEvent		- 5
)		5 6
{

 
	_logEvent 
= 
logEvent 
; 
} 
public 

object 
Message 
=> 
	_logEvent &
.& '

Parameters' 1
[1 2
$num2 3
]3 4
;4 5
} 
} ‘
eE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\CrossCuttingConcerns\Validation\ValidationTool.cs
	namespace 	
Core
 
.  
CrossCuttingConcerns #
.# $

Validation$ .
{ 
public 
static	 
class 
ValidationTool $
{		 
public

 

static

 
void

 
Validate

 
(

  

IValidator

  *
	validator

+ 4
,

4 5
object

6 <
entity

= C
)

C D
{ 
var 	
result
 
= 
	validator 
. 
Validate %
(% &
entity& ,
), -
;- .
if 
(	 

!
 
result 
. 
IsValid 
) 
{ 
throw 
new 
ValidationException %
(% &
result& ,
., -
Errors- 3
)3 4
;4 5
} 
} 
} 
} ïI
hE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\DataAccess\EntityFramework\EfEntityRepositoryBase.cs
	namespace		 	
Core		
 
.		 

DataAccess		 
.		 
EntityFramework		 )
{

 
public 

class "
EfEntityRepositoryBase '
<' (
TEntity( /
,/ 0
TContext1 9
>9 :
: 
IEntityRepository 
<  
TEntity  '
>' (
where 
TEntity 
: 
class !
,! "
IEntity# *
where 
TContext 
: 
	DbContext &
{ 
	protected 
readonly 
TContext #
context$ +
;+ ,
public "
EfEntityRepositoryBase %
(% &
TContext& .
context/ 6
)6 7
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
TEntity 
Add 
( 
TEntity "
entity# )
)) *
{ 	
return 
context 
. 
Add 
( 
entity %
)% &
.& '
Entity' -
;- .
}   	
public"" 
TEntity"" 
Update"" 
("" 
TEntity"" %
entity""& ,
)"", -
{## 	
context$$ 
.$$ 
Update$$ 
($$ 
entity$$ !
)$$! "
;$$" #
return%% 
entity%% 
;%% 
}&& 	
public(( 
void(( 
Delete(( 
((( 
TEntity(( "
entity((# )
)(() *
{)) 	
context** 
.** 
Remove** 
(** 
entity** !
)**! "
;**" #
}++ 	
public-- 
TEntity-- 
Get-- 
(-- 

Expression-- %
<--% &
Func--& *
<--* +
TEntity--+ 2
,--2 3
bool--4 8
>--8 9
>--9 :

expression--; E
)--E F
{.. 	
return// 
context// 
.// 
Set// 
<// 
TEntity// &
>//& '
(//' (
)//( )
.//) *
FirstOrDefault//* 8
(//8 9

expression//9 C
)//C D
;//D E
}00 	
public22 
async22 
Task22 
<22 
TEntity22 !
>22! "
GetAsync22# +
(22+ ,

Expression22, 6
<226 7
Func227 ;
<22; <
TEntity22< C
,22C D
bool22E I
>22I J
>22J K

expression22L V
)22V W
{33 	
return44 
await44 
context44  
.44  !
Set44! $
<44$ %
TEntity44% ,
>44, -
(44- .
)44. /
.44/ 0
FirstOrDefaultAsync440 C
(44C D

expression44D N
)44N O
;44O P
}55 	
public77 
IEnumerable77 
<77 
TEntity77 "
>77" #
GetList77$ +
(77+ ,

Expression77, 6
<776 7
Func777 ;
<77; <
TEntity77< C
,77C D
bool77E I
>77I J
>77J K

expression77L V
=77W X
null77Y ]
)77] ^
{88 	
return99 

expression99 
==99  
null99! %
?99& '
context99( /
.99/ 0
Set990 3
<993 4
TEntity994 ;
>99; <
(99< =
)99= >
.99> ?
AsNoTracking99? K
(99K L
)99L M
:99N O
context99P W
.99W X
Set99X [
<99[ \
TEntity99\ c
>99c d
(99d e
)99e f
.99f g
Where99g l
(99l m

expression99m w
)99w x
.99x y
AsNoTracking	99y Ö
(
99Ö Ü
)
99Ü á
;
99á à
}:: 	
public<< 
async<< 
Task<< 
<<< 
IEnumerable<< %
<<<% &
TEntity<<& -
><<- .
><<. /
GetListAsync<<0 <
(<<< =

Expression<<= G
<<<G H
Func<<H L
<<<L M
TEntity<<M T
,<<T U
bool<<V Z
><<Z [
><<[ \

expression<<] g
=<<h i
null<<j n
)<<n o
{== 	
return>> 

expression>> 
==>>  
null>>! %
?>>& '
await>>( -
context>>. 5
.>>5 6
Set>>6 9
<>>9 :
TEntity>>: A
>>>A B
(>>B C
)>>C D
.>>D E
ToListAsync>>E P
(>>P Q
)>>Q R
:>>S T
await?? 
context?? 
.?? 
Set?? "
<??" #
TEntity??# *
>??* +
(??+ ,
)??, -
.??- .
Where??. 3
(??3 4

expression??4 >
)??> ?
.??? @
ToListAsync??@ K
(??K L
)??L M
;??M N
}@@ 	
publicBB 
intBB 
SaveChangesBB 
(BB 
)BB  
{CC 	
returnDD 
contextDD 
.DD 
SaveChangesDD &
(DD& '
)DD' (
;DD( )
}EE 	
publicGG 
TaskGG 
<GG 
intGG 
>GG 
SaveChangesAsyncGG )
(GG) *
)GG* +
{HH 	
returnII 
contextII 
.II 
SaveChangesAsyncII +
(II+ ,
)II, -
;II- .
}JJ 	
publicLL 

IQueryableLL 
<LL 
TEntityLL !
>LL! "
QueryLL# (
(LL( )
)LL) *
{MM 	
returnNN 
contextNN 
.NN 
SetNN 
<NN 
TEntityNN &
>NN& '
(NN' (
)NN( )
;NN) *
}OO 	
publicQQ 
TaskQQ 
<QQ 
intQQ 
>QQ 
ExecuteQQ  
(QQ  !
FormattableStringQQ! 2#
interpolatedQueryStringQQ3 J
)QQJ K
{RR 	
returnSS 
contextSS 
.SS 
DatabaseSS #
.SS# $'
ExecuteSqlInterpolatedAsyncSS$ ?
(SS? @#
interpolatedQueryStringSS@ W
)SSW X
;SSX Y
}TT 	
publicVV 
TResultVV 
InTransactionVV $
<VV$ %
TResultVV% ,
>VV, -
(VV- .
FuncVV. 2
<VV2 3
TResultVV3 :
>VV: ;
actionVV< B
,VVB C
ActionVVD J
successActionVVK X
=VVY Z
nullVV[ _
,VV_ `
ActionVVa g
<VVg h
	ExceptionVVh q
>VVq r
exceptionAction	VVs Ç
=
VVÉ Ñ
null
VVÖ â
)
VVâ ä
{WW 	
TResultXX 
resultXX 
=XX 
defaultXX $
(XX$ %
TResultXX% ,
)XX, -
;XX- .
tryYY 
{ZZ 
if\\ 
(\\ 
context\\ 
.\\ 
Database\\ $
.\\$ %
ProviderName\\% 1
.\\1 2
EndsWith\\2 :
(\\: ;
$str\\; E
)\\E F
)\\F G
{]] 
result^^ 
=^^ 
action^^ #
(^^# $
)^^$ %
;^^% &
this__ 
.__ 
SaveChanges__ $
(__$ %
)__% &
;__& '
}`` 
elseaa 
{bb 
usingcc 
(cc 
varcc 
txcc !
=cc" #
contextcc$ +
.cc+ ,
Databasecc, 4
.cc4 5
BeginTransactioncc5 E
(ccE F
)ccF G
)ccG H
{dd 
tryee 
{ff 
resultgg "
=gg# $
actiongg% +
(gg+ ,
)gg, -
;gg- .
thishh  
.hh  !
SaveChangeshh! ,
(hh, -
)hh- .
;hh. /
txii 
.ii 
Commitii %
(ii% &
)ii& '
;ii' (
}jj 
catchkk 
(kk 
	Exceptionkk (
)kk( )
{ll 
txmm 
.mm 
Rollbackmm '
(mm' (
)mm( )
;mm) *
thrownn !
;nn! "
}oo 
}pp 
}qq 
successActionss 
?ss 
.ss 
Invokess %
(ss% &
)ss& '
;ss' (
}tt 
catchuu 
(uu 
	Exceptionuu 
exuu 
)uu  
{vv 
ifww 
(ww 
exceptionActionww #
==ww$ &
nullww' +
)ww+ ,
throwxx 
;xx 
elseyy 
exceptionActionzz #
(zz# $
exzz$ &
)zz& '
;zz' (
}{{ 
return|| 
result|| 
;|| 
}}} 	
}~~ 
} Ø
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\DataAccess\IEntityRepository.cs
	namespace 	
Core
 
. 

DataAccess 
{		 
public

 
	interface

	 
IEntityRepository

 $
<

$ %
T

% &
>

& '
where

( -
T

. /
:

0 1
class

2 7
,

7 8
IEntity

9 @
{ 
T 
Add 	
(	 

T
 
entity 
) 
; 
T 
Update 
( 
T 
entity 
) 
; 
void 
Delete	 
( 
T 
entity 
) 
; 
IEnumerable 
< 
T 
> 
GetList 
( 

Expression %
<% &
Func& *
<* +
T+ ,
,, -
bool. 2
>2 3
>3 4

expression5 ?
=@ A
nullB F
)F G
;G H
Task 
< 	
IEnumerable	 
< 
T 
> 
> 
GetListAsync %
(% &

Expression& 0
<0 1
Func1 5
<5 6
T6 7
,7 8
bool9 =
>= >
>> ?

expression@ J
=K L
nullM Q
)Q R
;R S
T 
Get 	
(	 


Expression
 
< 
Func 
< 
T 
, 
bool !
>! "
>" #

expression$ .
). /
;/ 0
Task 
< 	
T	 

>
 
GetAsync 
( 

Expression 
<  
Func  $
<$ %
T% &
,& '
bool( ,
>, -
>- .

expression/ 9
)9 :
;: ;
int 
SaveChanges 
( 
) 
; 
Task 
< 	
int	 
> 
SaveChangesAsync 
( 
)  
;  !

IQueryable 
< 
T 
> 
Query 
( 
) 
; 
Task 
< 	
int	 
> 
Execute 
( 
FormattableString '#
interpolatedQueryString( ?
)? @
;@ A
TResult 
InTransaction 
< 
TResult !
>! "
(" #
Func# '
<' (
TResult( /
>/ 0
action1 7
,7 8
Action9 ?
successAction@ M
=N O
nullP T
,T U
ActionV \
<\ ]
	Exception] f
>f g
exceptionActionh w
=x y
nullz ~
)~ 
;	 Ä
} 
} ≠
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\DataAccess\IQueryableRepositoryBase.cs
	namespace 	
Core
 
. 

DataAccess 
{ 
public 

	interface $
IQueryableRepositoryBase -
<- .
out. 1
T2 3
>3 4
where5 :
T; <
:= >
class? D
,D E
IEntityF M
,M N
newO R
(R S
)S T
{ 

IQueryable 
< 
T 
> 
Table 
{ 
get !
;! "
}# $
}		 
}

 ÿ 
UE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\DependencyResolvers\CoreModule.cs
	namespace 	
Core
 
. 
DependencyResolvers "
{ 
public 

class 

CoreModule 
: 
ICoreModule )
{ 
public 
void 
Load 
( 
IServiceCollection +
services, 4
,4 5
IConfiguration6 D
configurationE R
)R S
{ 	
services 
. 
AddMemoryCache #
(# $
)$ %
;% &
services 
. 
AddSingleton !
<! "
ICacheManager" /
,/ 0
MemoryCacheManager1 C
>C D
(D E
)E F
;F G
services 
. 
AddSingleton !
<! "
IMailService" .
,. /
MailManager0 ;
>; <
(< =
)= >
;> ?
services 
. 
AddSingleton !
<! "
IEmailConfiguration" 5
,5 6
EmailConfiguration7 I
>I J
(J K
)K L
;L M
services 
. 
AddSingleton !
<! " 
IHttpContextAccessor" 6
,6 7
HttpContextAccessor8 K
>K L
(L M
)M N
;N O
services 
. 
AddSingleton !
<! "
	Stopwatch" +
>+ ,
(, -
)- .
;. /
services 
. 

AddMediatR 
(  
Assembly  (
.( ) 
GetExecutingAssembly) =
(= >
)> ?
)? @
;@ A
services 
. 
AddSwaggerGen "
(" #
c# $
=>% '
{ 
c 
. 

SwaggerDoc 
( 
SwaggerMessages ,
., -
Version- 4
,4 5
new6 9
OpenApiInfo: E
{   
Version!! 
=!! 
SwaggerMessages!! -
.!!- .
Version!!. 5
,!!5 6
Title"" 
="" 
SwaggerMessages"" +
.""+ ,
Title"", 1
,""1 2
Description## 
=##  !
SwaggerMessages##" 1
.##1 2
Description##2 =
,##= >
TermsOfService$$ "
=$$# $
new$$% (
Uri$$) ,
($$, -
SwaggerMessages$$- <
.$$< =
TermsOfService$$= K
)$$K L
,$$L M
Contact%% 
=%% 
new%% !
OpenApiContact%%" 0
{&& 
Name'' 
='' 
SwaggerMessages'' .
.''. /
ContactName''/ :
,'': ;
}(( 
,(( 
License)) 
=)) 
new)) !
OpenApiLicense))" 0
{** 
Name++ 
=++ 
SwaggerMessages++ .
.++. /
LicenceName++/ :
,++: ;
},, 
,,, 
}-- 
)-- 
;-- 
c// 
.// 
OperationFilter// !
<//! "(
AddAuthHeaderOperationFilter//" >
>//> ?
(//? @
)//@ A
;//A B
c00 
.00 !
AddSecurityDefinition00 '
(00' (
$str00( 0
,000 1
new002 5!
OpenApiSecurityScheme006 K
{11 
Description22 
=22  !
$str22" N
,22N O
Type33 
=33 
SecuritySchemeType33 -
.33- .
Http33. 2
,332 3
BearerFormat44  
=44! "
$str44# (
,44( )
In55 
=55 
ParameterLocation55 *
.55* +
Header55+ 1
,551 2
Scheme66 
=66 
$str66 %
}77 
)77 
;77 
}88 
)88 
;88 
}99 	
}:: 
};; á
NE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\Group.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 
Group 
: 
IEntity 
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
	GroupName 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 ë
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\GroupClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 

GroupClaim 
: 
IEntity #
{ 
public 

int 
GroupId 
{ 
get 
; 
set !
;! "
}# $
public 

int 
ClaimId 
{ 
get 
; 
set !
;! "
}# $
} 
} î
WE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\OperationClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 
OperationClaim 
: 
IEntity  '
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
} 
} ˚
ME:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\User.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public		 

class		 
User		 
:		 
IEntity		 
{

 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
long 
	CitizenId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
FullName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
MobilePhones "
{# $
get% (
;( )
set* -
;- .
}/ 0
public"" 
bool"" 
Status"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public&& 
DateTime&& 
	BirthDate&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public** 
int** 
Gender** 
{** 
get** 
;**  
set**! $
;**$ %
}**& '
public.. 
DateTime.. 

RecordDate.. "
{..# $
get..% (
;..( )
set..* -
;..- .
}../ 0
public22 
string22 
Address22 
{22 
get22  #
;22# $
set22% (
;22( )
}22* +
public66 
string66 
Notes66 
{66 
get66 !
;66! "
set66# &
;66& '
}66( )
public:: 
DateTime:: 
UpdateContactDate:: )
{::* +
get::, /
;::/ 0
set::1 4
;::4 5
}::6 7
[?? 	
	NotMapped??	 
]?? 
public@@ 
string@@ &
AuthenticationProviderType@@ 0
{@@1 2
get@@3 6
;@@6 7
set@@8 ;
;@@; <
}@@= >
=@@? @
$str@@A I
;@@I J
publicFF 
byteFF 
[FF 
]FF 
PasswordSaltFF "
{FF# $
getFF% (
;FF( )
setFF* -
;FF- .
}FF/ 0
publicJJ 
byteJJ 
[JJ 
]JJ 
PasswordHashJJ "
{JJ# $
getJJ% (
;JJ( )
setJJ* -
;JJ- .
}JJ/ 0
publicLL 
UserLL 
(LL 
)LL 
{MM 	
UpdateContactDateNN 
=NN 

RecordDateNN  *
=NN+ ,
DateTimeNN- 5
.NN5 6
NowNN6 9
;NN9 :
StatusOO 
=OO 
trueOO 
;OO 
}PP 	
publicRR 
boolRR 
UpdateMobilePhoneRR %
(RR% &
stringRR& ,
mobilePhoneRR- 8
)RR8 9
{SS 	
ifTT 
(TT 
mobilePhoneTT 
!=TT 
MobilePhonesTT +
)TT+ ,
{UU 
MobilePhonesVV 
=VV 
mobilePhoneVV *
;VV* +
returnWW 
trueWW 
;WW 
}XX 
elseYY 
returnZZ 
falseZZ 
;ZZ 
}[[ 	
}]] 
}^^ é
RE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\UserClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 
	UserClaim 
: 
IEntity "
{ 
public 

int 
UserId 
{ 
get 
; 
set  
;  !
}" #
public 

int 
ClaimId 
{ 
get 
; 
set !
;! "
}# $
} 
} é
RE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\UserGroup.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 
	UserGroup 
: 
IEntity "
{ 
public 

int 
GroupId 
{ 
get 
; 
set !
;! "
}# $
public 

int 
UserId 
{ 
get 
; 
set  
;  !
}" #
} 
} ©
[E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\Concrete\UserOperationClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public 
class	 
UserOperationClaim !
:" #
IEntity$ +
{ 
public 

int 
UserId 
{ 
get 
; 
set  
;  !
}" #
public 

int 
OperationClaimId 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} á
DE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\IDto.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 
	interface	 
IDto 
{ 
} 
} ç
GE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Entities\IEntity.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 
	interface	 
IEntity 
{ 
} 
} €
QE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ClaimExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
static	 
class 
ClaimExtensions %
{		 
public

 

static

 
void

 
AddEmail

 
(

  
this

  $
ICollection

% 0
<

0 1
Claim

1 6
>

6 7
claims

8 >
,

> ?
string

@ F
email

G L
)

L M
{ 
claims 
. 
Add 
( 
new 
Claim 
( #
JwtRegisteredClaimNames 2
.2 3
Email3 8
,8 9
email: ?
)? @
)@ A
;A B
} 
public 

static 
void 
AddName 
( 
this #
ICollection$ /
</ 0
Claim0 5
>5 6
claims7 =
,= >
string? E
nameF J
)J K
{ 
claims 
. 
Add 
( 
new 
Claim 
( 

ClaimTypes %
.% &
Name& *
,* +
name, 0
)0 1
)1 2
;2 3
} 
public 

static 
void 
AddNameIdentifier (
(( )
this) -
ICollection. 9
<9 :
Claim: ?
>? @
claimsA G
,G H
stringI O
nameIdentifierP ^
)^ _
{ 
claims 
. 
Add 
( 
new 
Claim 
( 

ClaimTypes %
.% &
NameIdentifier& 4
,4 5
nameIdentifier6 D
)D E
)E F
;F G
} 
public 

static 
void #
AddNameUniqueIdentifier .
(. /
this/ 3
ICollection4 ?
<? @
Claim@ E
>E F
claimsG M
,M N
stringO U 
nameUniqueIdentifierV j
)j k
{ 
claims 
. 
Add 
( 
new 
Claim 
( 

ClaimTypes %
.% &
SerialNumber& 2
,2 3 
nameUniqueIdentifier4 H
)H I
)I J
;J K
} 
public 

static 
void 
AddRoles 
(  
this  $
ICollection% 0
<0 1
Claim1 6
>6 7
claims8 >
,> ?
string@ F
[F G
]G H
rolesI N
)N O
{ 
roles   
.   
ToList   
(   
)   
.   
ForEach   
(   
role   !
=>  " $
claims  % +
.  + ,
Add  , /
(  / 0
new  0 3
Claim  4 9
(  9 :

ClaimTypes  : D
.  D E
Role  E I
,  I J
role  K O
)  O P
)  P Q
)  Q R
;  R S
}!! 
}"" 
}## º
[E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ClaimsPrincipalExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
static	 
class %
ClaimsPrincipalExtensions /
{ 
public		 

static		 
List		 
<		 
string		 
>		 
Claims		 %
(		% &
this		& *
ClaimsPrincipal		+ :
claimsPrincipal		; J
,		J K
string		L R
	claimType		S \
)		\ ]
{

 
var 	
result
 
= 
claimsPrincipal "
?" #
.# $
FindAll$ +
(+ ,
	claimType, 5
)5 6
?6 7
.7 8
Select8 >
(> ?
x? @
=>A C
xD E
.E F
ValueF K
)K L
.L M
ToListM S
(S T
)T U
;U V
return 
result 
; 
} 
public 

static 
List 
< 
string 
> 

ClaimRoles )
() *
this* .
ClaimsPrincipal/ >
claimsPrincipal? N
)N O
{ 
return 
claimsPrincipal 
? 
. 
Claims $
($ %

ClaimTypes% /
./ 0
Role0 4
)4 5
;5 6
} 
} 
} À
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ContextExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public		 
static		 
class		 
ContextExtensions		 &
{

 
public 
static	 
DbSet 
< 
T 
> 
Set 
< 
T 
> 
(  
this  $
	DbContext% .
_context/ 7
,7 8
Type9 =
t> ?
)? @
whereA F
TG H
:I J
classK P
{ 
return 	
(
 
DbSet 
< 
T 
> 
) 
_context 
. 
GetType $
($ %
)% &
.& '
	GetMethod' 0
(0 1
$str1 6
)6 7
.7 8
MakeGenericMethod8 I
(I J
tJ K
)K L
.L M
InvokeM S
(S T
_contextT \
,\ ]
null^ b
)b c
;c d
} 
public## 
static##	 

IQueryable## 
<## 
T## 
>## 
QueryableOf## )
<##) *
T##* +
>##+ ,
(##, -
this##- 1
	DbContext##2 ;
_context##< D
,##D E
string##F L
typeName##M U
)##U V
where##W \
T##] ^
:##_ `
class##a f
{$$ 
var%% 
type%% 
=%% 
_context%% 
.%% 
Model%% 
.%% 
GetEntityTypes%% +
(%%+ ,
typeName%%, 4
)%%4 5
.%%5 6
First%%6 ;
(%%; <
)%%< =
;%%= >
var'' 
q'' 
=''	 

('' 

IQueryable'' 
)'' 
_context'' 
.(( 
GetType(( 
((( 
)(( 
.)) 
	GetMethod)) 
()) 
$str)) 
))) 
.** 
MakeGenericMethod** 
(** 
type** 
.** 
ClrType** #
)**# $
.++ 
Invoke++ 
(++ 
_context++ 
,++ 
null++ 
)++ 
;++ 
return,, 	
q,,
 
.,, 
OfType,, 
<,, 
T,, 
>,, 
(,, 
),, 
;,, 
}-- 
}.. 
}// ¨
TE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\DateTimeExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
static	 
class 
DateTimeExtensions (
{ 
public 

static 
string 
ToPrettyDate %
(% &
this& *
DateTime+ 3
date4 8
,8 9
CultureInfo: E
cultureF M
)M N
{		 
if

 
(

	 

culture


 
==

 
null

 
)

 
{ 
throw 
new !
ArgumentNullException '
(' (
nameof( .
(. /
culture/ 6
)6 7
)7 8
;8 9
} 
return 
date 
. 
ToString 
( 
$str %
,% &
culture' .
). /
;/ 0
} 
} 
} ı
NE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ErrorDetails.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
class	 
ErrorDetails 
{ 
public 

string 
Message 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 

StatusCode 
{ 
get 
;  
set! $
;$ %
}& '
public		 

override		 
string		 
ToString		 #
(		# $
)		$ %
{

 
return 
JsonConvert 
. 
SerializeObject (
(( )
this) -
)- .
;. /
} 
} 
} à!
UE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ExceptionMiddleware.cs
	namespace 	
Core
 
. 

Extensions 
{		 
public 

class 
ExceptionMiddleware $
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
)7 8
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
httpContext2 =
)= >
{ 	
try 
{ 
await 
_next 
( 
httpContext '
)' (
;( )
} 
catch 
( 
	Exception 
e 
) 
{ 
await  
HandleExceptionAsync *
(* +
httpContext+ 6
,6 7
e8 9
)9 :
;: ;
} 
}   	
private## 
async## 
Task##  
HandleExceptionAsync## /
(##/ 0
HttpContext##0 ;
httpContext##< G
,##G H
	Exception##I R
e##S T
)##T U
{$$ 	
httpContext%% 
.%% 
Response%%  
.%%  !
ContentType%%! ,
=%%- .
$str%%/ A
;%%A B
httpContext&& 
.&& 
Response&&  
.&&  !

StatusCode&&! +
=&&, -
(&&. /
int&&/ 2
)&&2 3
HttpStatusCode&&3 A
.&&A B
InternalServerError&&B U
;&&U V
_'' 
='' 
e'' 
.'' 
Message'' 
;'' 
string(( 
message(( 
;(( 
if)) 
()) 
e)) 
.)) 
GetType)) 
()) 
))) 
==)) 
typeof)) %
())% &
ValidationException))& 9
)))9 :
))): ;
{** 
message++ 
=++ 
e++ 
.++ 
Message++ #
;++# $
httpContext,, 
.,, 
Response,, $
.,,$ %

StatusCode,,% /
=,,0 1
(,,2 3
int,,3 6
),,6 7
HttpStatusCode,,7 E
.,,E F

BadRequest,,F P
;,,P Q
}-- 
else.. 
if.. 
(.. 
e.. 
... 
GetType.. 
(.. 
)..  
==..! #
typeof..$ *
(..* + 
ApplicationException..+ ?
)..? @
)..@ A
{// 
message00 
=00 
e00 
.00 
Message00 #
;00# $
httpContext11 
.11 
Response11 $
.11$ %

StatusCode11% /
=110 1
(112 3
int113 6
)116 7
HttpStatusCode117 E
.11E F

BadRequest11F P
;11P Q
}22 
else33 
if33 
(33 
e33 
.33 
GetType33 
(33 
)33  
==33! #
typeof33$ *
(33* +'
UnauthorizedAccessException33+ F
)33F G
)33G H
{44 
message55 
=55 
e55 
.55 
Message55 #
;55# $
httpContext66 
.66 
Response66 $
.66$ %

StatusCode66% /
=660 1
StatusCodes662 =
.66= >!
Status401Unauthorized66> S
;66S T
}77 
else88 
{99 
message:: 
=:: 
ExceptionMessage:: *
.::* +
InternalServerError::+ >
;::> ?
};; 
await== 
httpContext== 
.== 
Response== &
.==& '

WriteAsync==' 1
(==1 2
message==2 9
)==9 :
;==: ;
}>> 	
}?? 
}@@ ﬁ
_E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ExceptionMiddlewareExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
static	 
class )
ExceptionMiddlewareExtensions 3
{ 
public 

static 
void .
"ConfigureCustomExceptionMiddleware 9
(9 :
this: >
IApplicationBuilder? R
appS V
)V W
{ 
app		 	
.			 

UseMiddleware		
 
<		 
ExceptionMiddleware		 +
>		+ ,
(		, -
)		- .
;		. /
}

 
} 
} å
]E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Extensions\ServiceCollectionExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 
static	 
class '
ServiceCollectionExtensions 1
{ 
public		 

static		 
void		 "
AddDependencyResolvers		 -
(		- .
this		. 2
IServiceCollection		3 E
services		F N
,		N O
IConfiguration		P ^
configuration		_ l
,		l m
ICoreModule		n y
[		y z
]		z {
modules			| É
)
		É Ñ
{

 
foreach 
( 
var 
module 
in 
modules $
)$ %
{ 
module 
. 
Load 
( 
services 
, 
configuration +
)+ ,
;, -
} 
} 
} 
} ◊
WE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Business\BusinessRules.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Business !
{ 
public 

static 
class 
BusinessRules %
{ 
public 
static 
IResult 
Run !
(! "
params" (
IResult) 0
[0 1
]1 2
logics3 9
)9 :
{ 	
foreach		 
(		 
var		 
result		 
in		  "
logics		# )
)		) *
{

 
if 
( 
! 
result 
. 
Success #
)# $
{ 
return 
result !
;! "
} 
} 
return 
null 
; 
} 	
} 
} ”t
cE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\ElasticSearch\ElasticSearchManager.cs
	namespace		 	
Core		
 
.		 
	Utilities		 
.		 
ElasticSearch		 &
{

 
public 

class  
ElasticSearchManager %
:& '
IElasticSearch( 6
{ 
public 
IConfiguration 
Configuration +
;+ ,
private 
readonly 
ConnectionSettings +
_connectionSettings, ?
;? @
public  
ElasticSearchManager #
(# $
IConfiguration$ 2
Configuration3 @
)@ A
{ 	
var 
settings 
= 
Configuration (
.( )

GetSection) 3
(3 4
$str4 G
)G H
.H I
GetI L
<L M
ElasticSearchCongM ^
>^ _
(_ `
)` a
;a b
Uri 
uri 
= 
new 
Uri 
( 
settings &
.& '
ConnectionString' 7
)7 8
;8 9
_connectionSettings 
=  !
new" %
ConnectionSettings& 8
(8 9
uri9 <
)< =
;= >
} 	
public 
Results 
. 
Result 

CheckIndex (
(( )
string) /
	indexName0 9
)9 :
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Results 
. 
Result 
CreateNewIndex ,
(, -

IndexModel- 7

indexModel8 B
)B C
{ 	
var   
elasticClient   
=   
GetElasticClient    0
(  0 1

indexModel  1 ;
.  ; <
	IndexName  < E
)  E F
;  F G
var"" 
aa"" 
="" 
elasticClient"" "
.""" #
Indices""# *
.""* +
Get""+ .
("". /
new""/ 2
GetIndexRequest""3 B
(""B C
Indices""C J
.""J K
All""K N
)""N O
)""O P
;""P Q
var$$ 
response$$ 
=$$ 
elasticClient$$ (
.$$( )
Indices$$) 0
.$$0 1
Create$$1 7
($$7 8

indexModel$$8 B
.$$B C
	IndexName$$C L
,$$L M
se$$N P
=>$$Q S
se%% 
.%% 
Settings%% 
(%% 
a%% 
=>%%  "
a%%# $
.%%$ %
NumberOfReplicas%%% 5
(%%5 6

indexModel%%6 @
.%%@ A
NumberOfReplicas%%A Q
)%%Q R
.&& 
NumberOfShards&& -
(&&- .

indexModel&&. 8
.&&8 9
NumberOfShards&&9 G
)&&G H
)&&H I
.'' 
Aliases'' 
('' 
x'' 
=>'' 
x''  !
.''! "
Alias''" '
(''' (

indexModel''( 2
.''2 3
	AliasName''3 <
)''< =
)''= >
)(( 
;(( 
return** 
new** 
Results** 
.** 
Result** %
(**% &
success**& -
:**- .
response**/ 7
.**7 8
IsValid**8 ?
,**? @
message++& -
:++- .
response++/ 7
.++7 8
IsValid++8 ?
?++@ A
$str++B K
:++L M
response++N V
.++V W
ServerError++W b
.++b c
Error++c h
.++h i
Reason++i o
)++o p
;++p q
}-- 	
public// 
List// 
<// 
T// 
>// 
GetAllSearch// #
<//# $
T//$ %
>//% &
(//& '
string//' -
	indexName//. 7
,//7 8
int//9 <
from//= A
=//B C
$num//D E
,//E F
int//G J
size//K O
=//P Q
$num//R T
)//T U
where//V [
T//\ ]
://^ _
class//` e
{00 	
var11 
elasticClient11 
=11 
GetElasticClient11  0
(110 1
	indexName111 :
)11: ;
;11; <
var22 
searchResponse22 
=22  
elasticClient22! .
.22. /
Search22/ 5
<225 6
T226 7
>227 8
(228 9
s229 :
=>22; =
s22> ?
.33 
Index33 "
(33" #
	indexName33# ,
)33, -
.44 
From44 !
(44! "
from44" &
)44& '
.55 
Size55 !
(55! "
size55" &
)55& '
)55' (
;55( )
return88 
searchResponse88 !
.88! "
	Documents88" +
.88+ ,
ToList88, 2
(882 3
)883 4
;884 5
}99 	
public;; 
IReadOnlyDictionary;; "
<;;" #
	IndexName;;# ,
,;;, -

IndexState;;. 8
>;;8 9
GetIndexList;;: F
(;;F G
);;G H
{<< 	
var== 
elasticClient== 
=== 
new==  #
ElasticClient==$ 1
(==1 2
_connectionSettings==2 E
)==E F
;==F G
return>> 
elasticClient>>  
.>>  !
Indices>>! (
.>>( )
Get>>) ,
(>>, -
new>>- 0
GetIndexRequest>>1 @
(>>@ A
Indices>>A H
.>>H I
All>>I L
)>>L M
)>>M N
.>>N O
Indices>>O V
;>>V W
}?? 	
publicAA 
ListAA 
<AA 
TAA 
>AA 
GetSearchByFieldAA '
<AA' (
TAA( )
>AA) *
(AA* +
stringAA+ 1
	indexNameAA2 ;
,AA; <
stringAA= C
fieldAAD I
,AAI J
stringAAK Q
valueAAR W
,AAW X
intAAY \
fromAA] a
=AAb c
$numAAd e
,AAe f
intAAg j
sizeAAk o
=AAp q
$numAAr t
)AAt u
whereAAv {
TAA| }
:AA~ 
class
AAÄ Ö
{BB 	
varCC 
elasticClientCC 
=CC 
GetElasticClientCC  0
(CC0 1
	indexNameCC1 :
)CC: ;
;CC; <
varDD 
searchResponseDD 
=DD  
elasticClientDD! .
.DD. /
SearchDD/ 5
<DD5 6
TDD6 7
>DD7 8
(DD8 9
sDD9 :
=>DD; =
sDD> ?
.EE 

AllIndicesEE #
(EE# $
)EE$ %
.FF 
FromFF 
(FF 
fromFF "
)FF" #
.GG 
SizeGG 
(GG 
sizeGG "
)GG" #
.HH 
QueryHH 
(HH 
qHH  
=>HH! #
qHH$ %
.HH% &
MatchHH& +
(HH+ ,
mII 
=>II  
mII! "
.II" #
FieldII# (
(II( )
fieldII) .
)II. /
.JJ 
QueryJJ "
(JJ" #
valueJJ# (
)JJ( )
.KK 
OperatorKK %
(KK% &
OperatorKK& .
.KK. /
AndKK/ 2
)KK2 3
)LL 
)MM 
)NN 
;NN 
returnPP 
searchResponsePP !
.PP! "
	DocumentsPP" +
.PP+ ,
ToListPP, 2
(PP2 3
)PP3 4
;PP4 5
}QQ 	
publicSS 
ListSS 
<SS 
TSS 
>SS (
GetSearchBySimpleQueryStringSS 3
<SS3 4
TSS4 5
>SS5 6
(SS6 7
stringSS7 =
	indexNameSS> G
,SSG H
stringSSI O
	queryNameSSP Y
,SSY Z
stringSS[ a
querySSb g
,SSg h
stringSSi o
[SSo p
]SSp q
fieldsSSr x
,SSx y
intSSz }
from	SS~ Ç
=
SSÉ Ñ
$num
SSÖ Ü
,
SSÜ á
int
SSà ã
size
SSå ê
=
SSë í
$num
SSì ï
)
SSï ñ
where
SSó ú
T
SSù û
:
SSü †
class
SS° ¶
{TT 	
varUU 
elasticClientUU 
=UU 
GetElasticClientUU  0
(UU0 1
	indexNameUU1 :
)UU: ;
;UU; <
varVV 
searchResponseVV 
=VV  
elasticClientVV! .
.VV. /
SearchVV/ 5
<VV5 6
TVV6 7
>VV7 8
(VV8 9
sVV9 :
=>VV; =
sVV> ?
.WW 
IndexWW "
(WW" #
	indexNameWW# ,
)WW, -
.XX 
FromXX !
(XX! "
fromXX" &
)XX& '
.YY 
SizeYY !
(YY! "
sizeYY" &
)YY& '
.ZZ 
MatchAllZZ %
(ZZ% &
)ZZ& '
.[[ 
Query[[ "
([[" #
a[[# $
=>[[% '
a[[( )
.[[) *
SimpleQueryString[[* ;
([[; <
c[[< =
=>[[> @
c[[A B
.\\& '
Name\\' +
(\\+ ,
	queryName\\, 5
)\\5 6
.]]& '
Boost]]' ,
(]], -
$num]]- 0
)]]0 1
.^^& '
Fields^^' -
(^^- .
fields^^. 4
)^^4 5
.__& '
Query__' ,
(__, -
query__- 2
)__2 3
.``& '
Analyzer``' /
(``/ 0
$str``0 :
)``: ;
.aa& '
DefaultOperatoraa' 6
(aa6 7
Operatoraa7 ?
.aa? @
Oraa@ B
)aaB C
.bb& '
Flagsbb' ,
(bb, -"
SimpleQueryStringFlagsbb- C
.bbC D
AndbbD G
|bbH I"
SimpleQueryStringFlagsbbJ `
.bb` a
Nearbba e
)bbe f
.cc& '
Lenientcc' .
(cc. /
)cc/ 0
.dd& '
AnalyzeWildcarddd' 6
(dd6 7
falsedd7 <
)dd< =
.ee& '
MinimumShouldMatchee' 9
(ee9 :
$stree: ?
)ee? @
.ff& '
FuzzyPrefixLengthff' 8
(ff8 9
$numff9 :
)ff: ;
.gg& '
FuzzyMaxExpansionsgg' 9
(gg9 :
$numgg: <
)gg< =
.hh& '
FuzzyTranspositionshh' :
(hh: ;
)hh; <
.ii& '+
AutoGenerateSynonymsPhraseQueryii' F
(iiF G
falseiiG L
)iiL M
)iiM N
)iiN O
)kk	 

;kk
 
returnll 
searchResponsell !
.ll! "
	Documentsll" +
.ll+ ,
ToListll, 2
(ll2 3
)ll3 4
;ll4 5
}mm 	
publicoo 
Resultsoo 
.oo 
Resultoo 
Insertoo $
(oo$ %
stringoo% +
	indexNameoo, 5
,oo5 6
objectoo7 =
itemoo> B
)ooB C
{pp 	
varqq 
elasticClientqq 
=qq 
GetElasticClientqq  0
(qq0 1
	indexNameqq1 :
)qq: ;
;qq; <
varss 
responsess 
=ss 
elasticClientss (
.ss( )
Indexss) .
(ss. /
itemss/ 3
,ss3 4
iss5 6
=>ss7 9
iss: ;
.ss; <
Indexss< A
(ssA B
	indexNamessB K
)ssK L
)ssL M
;ssM N
returnuu 
newuu 
Resultsuu 
.uu 
Resultuu %
(uu% &
successuu& -
:uu- .
responseuu/ 7
.uu7 8
IsValiduu8 ?
,uu? @
messagevv% ,
:vv, -
responsevv. 6
.vv6 7
IsValidvv7 >
?vv? @
$strvvA J
:vvK L
responsevvM U
.vvU V
ServerErrorvvV a
.vva b
Errorvvb g
.vvg h
Reasonvvh n
)vvn o
;vvo p
}ww 	
publicyy 
Resultsyy 
.yy 
Resultyy 

InsertManyyy (
(yy( )
stringyy) /
	indexNameyy0 9
,yy9 :
objectyy; A
[yyA B
]yyB C
itemsyyD I
)yyI J
{zz 	
var{{ 
elasticClient{{ 
={{ 
GetElasticClient{{  0
({{0 1
	indexName{{1 :
){{: ;
;{{; <
var|| 
response|| 
=|| 
elasticClient|| (
.||( )
Bulk||) -
(||- .
a||. /
=>||0 2
a}}! "
.}}" #
Index}}# (
(}}( )
	indexName}}) 2
)}}2 3
.~~! "
	IndexMany~~" +
(~~+ ,
items~~, 1
)~~1 2
)~~2 3
;~~3 4
return
ÄÄ 
new
ÄÄ 
Results
ÄÄ 
.
ÄÄ 
Result
ÄÄ %
(
ÄÄ% &
success
ÄÄ& -
:
ÄÄ- .
response
ÄÄ/ 7
.
ÄÄ7 8
IsValid
ÄÄ8 ?
,
ÄÄ? @
message
ÅÅ% ,
:
ÅÅ, -
response
ÅÅ. 6
.
ÅÅ6 7
IsValid
ÅÅ7 >
?
ÅÅ? @
$str
ÅÅA J
:
ÅÅK L
response
ÅÅM U
.
ÅÅU V
ServerError
ÅÅV a
.
ÅÅa b
Error
ÅÅb g
.
ÅÅg h
Reason
ÅÅh n
)
ÅÅn o
;
ÅÅo p
}
ÇÇ 	
private
ÖÖ 
void
ÖÖ )
ControlIndexNameNullOrEmpty
ÖÖ 0
(
ÖÖ0 1
string
ÖÖ1 7
	indexName
ÖÖ8 A
)
ÖÖA B
{
ÜÜ 	
if
áá 
(
áá 
string
áá 
.
áá 
IsNullOrEmpty
áá $
(
áá$ %
	indexName
áá% .
)
áá. /
)
áá/ 0
{
àà 
throw
ââ 
new
ââ #
ArgumentNullException
ââ /
(
ââ/ 0
	indexName
ââ0 9
,
ââ9 :
$str
ââ; `
)
ââ` a
;
ââa b
}
ää 
}
ãã 	
private
éé 
ElasticClient
éé 
GetElasticClient
éé .
(
éé. /
string
éé/ 5
	indexName
éé6 ?
)
éé? @
{
èè 	)
ControlIndexNameNullOrEmpty
êê '
(
êê' (
	indexName
êê( 1
)
êê1 2
;
êê2 3
return
ëë 
new
ëë 
ElasticClient
ëë $
(
ëë$ %!
_connectionSettings
ëë% 8
)
ëë8 9
;
ëë9 :
}
íí 	
}
ìì 
}ïï «
]E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\ElasticSearch\IElasticSearch.cs
	namespace 	
Core
 
. 
	Utilities 
. 
ElasticSearch &
{		 
public

 

	interface

 
IElasticSearch

 #
{ 
Results 
. 
Result 

CheckIndex !
(! "
string" (
	indexName) 2
)2 3
;3 4
Results 
. 
Result 
CreateNewIndex %
(% &

IndexModel& 0

indexModel1 ;
); <
;< =
Results 
. 
Result 
Insert 
( 
string $
	indexName% .
,. /
object0 6
item7 ;
); <
;< =
Results 
. 
Result 

InsertMany !
(! "
string" (
	indexName) 2
,2 3
object4 :
[: ;
]; <
items= B
)B C
;C D
IReadOnlyDictionary 
< 
	IndexName %
,% &

IndexState' 1
>1 2
GetIndexList3 ?
(? @
)@ A
;A B
List 
< 
T 
> 
GetAllSearch 
< 
T 
> 
(  
string  &
	indexName' 0
,0 1
int2 5
from6 :
=; <
$num= >
,> ?
int@ C
sizeD H
=I J
$numK M
)M N
whereO T
TU V
:W X
classY ^
;^ _
List 
< 
T 
> 
GetSearchByField  
<  !
T! "
>" #
(# $
string$ *
	indexName+ 4
,4 5
string6 <
field= B
,B C
stringD J
valueK P
,P Q
intR U
fromV Z
=[ \
$num] ^
,^ _
int` c
sized h
=i j
$numk m
)m n
whereo t
Tu v
:w x
classy ~
;~ 
} 
} ›
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\ElasticSearch\Models\ElasticSearchCong.cs
	namespace 	
Core
 
. 
	Utilities 
. 
ElasticSearch &
.& '
Models' -
{ 
public 

class 
ElasticSearchCong "
{ 
public		 
string		 
ConnectionString		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
string

 
UserName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ô	
`E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\ElasticSearch\Models\IndexModel.cs
	namespace 	
Core
 
. 
	Utilities 
. 
ElasticSearch &
.& '
Models' -
{ 
public 

class 

IndexModel 
{ 
public		 
string		 
	IndexName		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
	AliasName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
NumberOfReplicas #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
NumberOfShards !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

IndexModel 
( 
) 
{ 	
NumberOfReplicas 
= 
$num  
;  !
NumberOfShards 
= 
$num 
; 
} 	
} 
} Ú
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Interceptors\AspectInterceptorSelector.cs
	namespace		 	
Core		
 
.		 
	Utilities		 
.		 
Interceptors		 %
{

 
public 
class	 %
AspectInterceptorSelector (
:) * 
IInterceptorSelector+ ?
{ 
public 

IInterceptor 
[ 
] 
SelectInterceptors ,
(, -
Type- 1
type2 6
,6 7

MethodInfo8 B
methodC I
,I J
IInterceptorK W
[W X
]X Y
interceptorsZ f
)f g
{ 
var 	
classAttributes
 
= 
type  
.  !
GetCustomAttributes! 4
<4 5+
MethodInterceptionBaseAttribute5 T
>T U
(U V
trueV Z
)Z [
.[ \
ToList\ b
(b c
)c d
;d e
var 	
methodAttributes
 
= 
type !
.! "
	GetMethod" +
(+ ,
method, 2
.2 3
Name3 7
)7 8
.8 9
GetCustomAttributes9 L
<L M+
MethodInterceptionBaseAttributeM l
>l m
(m n
truen r
)r s
;s t
classAttributes 
. 
AddRange 
( 
methodAttributes /
)/ 0
;0 1
classAttributes 
. 
Add 
( 
new 
ExceptionLogAspect 0
(0 1
typeof1 7
(7 8

FileLogger8 B
)B C
)C D
)D E
;E F
return 
classAttributes 
. 
OrderBy $
($ %
x% &
=>' )
x* +
.+ ,
Priority, 4
)4 5
.5 6
ToArray6 =
(= >
)> ?
;? @
} 
} 
} »
`E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Interceptors\MethodInterception.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Interceptors %
{ 
public 

abstract 
class 
MethodInterception ,
:- .+
MethodInterceptionBaseAttribute/ N
{ 
	protected 
virtual 
void 
OnBefore '
(' (
IInvocation( 3

invocation4 >
)> ?
{@ A
}B C
	protected		 
virtual		 
void		 
OnAfter		 &
(		& '
IInvocation		' 2

invocation		3 =
)		= >
{		? @
}		A B
	protected

 
virtual

 
void

 
OnException

 *
(

* +
IInvocation

+ 6

invocation

7 A
,

A B
System

C I
.

I J
	Exception

J S
e

T U
)

U V
{

W X
}

Y Z
	protected 
virtual 
void 
	OnSuccess (
(( )
IInvocation) 4

invocation5 ?
)? @
{A B
}C D
public 
override 
void 
	Intercept &
(& '
IInvocation' 2

invocation3 =
)= >
{ 	
var 
	isSuccess 
= 
true  
;  !
OnBefore 
( 

invocation 
)  
;  !
try 
{ 

invocation 
. 
Proceed "
(" #
)# $
;$ %
var 
result 
= 

invocation '
.' (
ReturnValue( 3
as4 6
Task7 ;
;; <
if 
( 
result 
!= 
null "
)" #
result 
. 
Wait 
(  
)  !
;! "
} 
catch 
( 
System 
. 
	Exception #
e$ %
)% &
{ 
	isSuccess 
= 
false !
;! "
OnException 
( 

invocation &
,& '
e( )
)) *
;* +
throw 
; 
} 
finally 
{ 
if   
(   
	isSuccess   
)   
{!! 
	OnSuccess"" 
("" 

invocation"" (
)""( )
;"") *
}## 
}$$ 
OnAfter%% 
(%% 

invocation%% 
)%% 
;%%  
}&& 	
}'' 
}(( Ç

mE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Interceptors\MethodInterceptionBaseAttribute.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Interceptors %
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 "
.

" #
Class

# (
|

) *
AttributeTargets

+ ;
.

; <
Method

< B
|

C D
AttributeTargets

E U
.

U V
Assembly

V ^
,

^ _
AllowMultiple

` m
=

n o
true

p t
,

t u
	Inherited

v 
=


Ä Å
true


Ç Ü
)


Ü á
]


á à
public 
abstract	 
class +
MethodInterceptionBaseAttribute 7
:8 9
	Attribute: C
,C D
IInterceptorE Q
{ 
public 

int 
Priority 
{ 
get 
; 
set "
;" #
}$ %
public 

virtual 
void 
	Intercept !
(! "
IInvocation" -

invocation. 8
)8 9
{ 
} 
} 
} à
PE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\IoC\ICoreModule.cs
	namespace 	
Core
 
. 
	Utilities 
. 
IoC 
{ 
public 
	interface	 
ICoreModule 
{ 
void 
Load	 
( 
IServiceCollection  
services! )
,) *
IConfiguration+ 9
configuration: G
)G H
;H I
}		 
}

 å
PE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\IoC\ServiceTool.cs
	namespace 	
Core
 
. 
	Utilities 
. 
IoC 
{ 
public 

static 
class 
ServiceTool #
{ 
public 
static 
IServiceProvider &
ServiceProvider' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
}		 Ó
RE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\EmailAddress.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{ 
public 
class	 
EmailAddress 
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

string 
Address 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Í
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\EmailConfiguration.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{ 
public 
class	 
EmailConfiguration !
:" #
IEmailConfiguration$ 7
{ 
public 

string 

SmtpServer 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
SmtpPort 
{ 
get 
; 
set "
;" #
}$ %
public		 

string		 
SmtpUserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
} 
} È
RE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\EmailMessage.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{ 
public 
class	 
EmailMessage 
{ 
public 

EmailMessage 
( 
) 
{ 
ToAddresses		 
=		 
new		 
List		 
<		 
EmailAddress		 )
>		) *
(		* +
)		+ ,
;		, -
FromAddresses

 
=

 
new

 
List

 
<

 
EmailAddress

 +
>

+ ,
(

, -
)

- .
;

. /
} 
public 

List 
< 
EmailAddress 
> 
ToAddresses )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

List 
< 
EmailAddress 
> 
FromAddresses +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 

string 
Subject 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
Content 
{ 
get 
;  
set! $
;$ %
}& '
} 
} 
YE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\IEmailConfiguration.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{ 
public 
	interface	 
IEmailConfiguration &
{ 
string 


SmtpServer 
{ 
get 
; 
} 
int 
SmtpPort 
{ 
get 
; 
} 
string 

SmtpUserName 
{ 
get 
; 
}  
string 

Password 
{ 
get 
; 
} 
}		 
}

 ƒ
RE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\IMailService.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{ 
public 
	interface	 
IMailService 
{ 
void 
Send	 
( 
EmailMessage 
emailMessage '
)' (
;( )
} 
} ¡
QE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Mail\MailManager.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Mail 
{		 
public

 

class

 
MailManager

 
:

 
IMailService

 +
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
MailManager 
( 
IConfiguration )
configuration* 7
)7 8
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 
void 
Send 
( 
EmailMessage %
emailMessage& 2
)2 3
{ 	
var 
message 
= 
new 
MimeMessage )
() *
)* +
;+ ,
message 
. 
To 
. 
AddRange 
(  
emailMessage  ,
., -
ToAddresses- 8
.8 9
Select9 ?
(? @
x@ A
=>B D
newE H
MailboxAddressI W
(W X
xX Y
.Y Z
NameZ ^
,^ _
x` a
.a b
Addressb i
)i j
)j k
)k l
;l m
message 
. 
From 
. 
AddRange !
(! "
emailMessage" .
.. /
FromAddresses/ <
.< =
Select= C
(C D
xD E
=>F H
newI L
MailboxAddressM [
([ \
x\ ]
.] ^
Name^ b
,b c
xd e
.e f
Addressf m
)m n
)n o
)o p
;p q
message 
. 
Subject 
= 
emailMessage *
.* +
Subject+ 2
;2 3
string 
messageBody 
=  
string! '
.' (
Format( .
(. /
emailMessage/ ;
.; <
Subject< C
,C D
emailMessageE Q
.Q R
ContentR Y
)Y Z
;Z [
message 
. 
Body 
= 
new 
TextPart '
(' (

TextFormat( 2
.2 3
Html3 7
)7 8
{ 
Text 
= 
messageBody "
}   
;   
using!! 
(!! 
var!! 
emailClient!! "
=!!# $
new!!% (

SmtpClient!!) 3
(!!3 4
)!!4 5
)!!5 6
{"" 
emailClient## 
.## 
Connect## #
(### $
_configuration##$ 2
.##2 3

GetSection##3 =
(##= >
$str##> R
)##R S
.##S T

GetSection##T ^
(##^ _
$str##_ k
)##k l
.##l m
Value##m r
,##r s
Convert$$ 
.$$ 
ToInt32$$ #
($$# $
_configuration$$$ 2
.$$2 3

GetSection$$3 =
($$= >
$str$$> R
)$$R S
.$$S T

GetSection$$T ^
($$^ _
$str$$_ i
)$$i j
.$$j k
Value$$k p
)$$p q
,$$q r
MailKit%% 
.%% 
Security%% $
.%%$ %
SecureSocketOptions%%% 8
.%%8 9
Auto%%9 =
)%%= >
;%%> ?
emailClient&& 
.&& 
Send&&  
(&&  !
message&&! (
)&&( )
;&&) *
emailClient'' 
.'' 

Disconnect'' &
(''& '
true''' +
)''+ ,
;'', -
}(( 
})) 	
}** 
}++ ó
mE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\MessageBrokers\RabbitMq\IMessageBrokerHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
MessageBrokers '
.' (
RabbitMq( 0
{ 
public 
	interface	  
IMessageBrokerHelper '
{ 
void 
QueueMessage	 
( 
string 
messageText (
)( )
;) *
} 
} ﬁ
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\MessageBrokers\RabbitMq\IMessageConsumer.cs
	namespace 	
Core
 
. 
	Utilities 
. 
MessageBrokers '
.' (
RabbitMq( 0
{ 
public 
	interface	 
IMessageConsumer #
{ 
void 
GetQueue	 
( 
) 
; 
} 
} ˛
mE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\MessageBrokers\RabbitMq\MessageBrokerOptions.cs
	namespace 	
Core
 
. 
	Utilities 
. 
MessageBrokers '
.' (
RabbitMq( 0
{ 
public 
class	  
MessageBrokerOptions #
{ 
public 

string 
HostName 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
UserName 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
	QueueName 
{ 
get !
;! "
set# &
;& '
}( )
}

 
} Ä 
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\MessageBrokers\RabbitMq\MqConsumerHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
MessageBrokers '
.' (
RabbitMq( 0
{		 
public

 
class

 
MqConsumerHelper

 
:

  
IMessageConsumer

! 1
{ 
public 
IConfiguration	 
Configuration %
;% &
private 	
readonly
  
MessageBrokerOptions '
_brokerOptions( 6
;6 7
public 
MqConsumerHelper	 
( 
IConfiguration (
configuration) 6
)6 7
{ 
Configuration 
= 
configuration  
;  !
_brokerOptions 
= 
Configuration !
.! "

GetSection" ,
(, -
$str- C
)C D
.D E
GetE H
<H I 
MessageBrokerOptionsI ]
>] ^
(^ _
)_ `
;` a
} 
public 
void	 
GetQueue 
( 
) 
{ 
var 
factory 
= 
new 
ConnectionFactory &
(& '
)' (
{ 
HostName 
= 
_brokerOptions 
. 
HostName &
,& '
UserName 
= 
_brokerOptions 
. 
UserName &
,& '
Password 
= 
_brokerOptions 
. 
Password &
} 
; 
using 
(	 

IConnection
 

connection  
=! "
factory# *
.* +
CreateConnection+ ;
(; <
)< =
)= >
using 
(	 

IModel
 
channel 
= 

connection %
.% &
CreateModel& 1
(1 2
)2 3
)3 4
{ 
channel 
. 
QueueDeclare 
( 
queue 
: 
$str  *
,* +
durable  
:  !
false" '
,' (
	exclusive   "
:  " #
false  $ )
,  ) *

autoDelete!! #
:!!# $
false!!% *
,!!* +
	arguments"" "
:""" #
null""$ (
)""( )
;"") *
var$$ 
consumer$$ 
=$$ 
new$$ !
EventingBasicConsumer$$ ,
($$, -
channel$$- 4
)$$4 5
;$$5 6
consumer&& 
.&& 
Received&& 
+=&& 
(&& 
model&& 
,&&  
mq&&! #
)&&# $
=>&&% '
{'' 
var(( 
body((	 
=(( 
mq(( 
.(( 
Body(( 
.(( 
ToArray(( 
(((  
)((  !
;((! "
var)) 
message))	 
=)) 
Encoding)) 
.)) 
UTF8))  
.))  !
	GetString))! *
())* +
body))+ /
)))/ 0
;))0 1
Console++ 
.++ 
	WriteLine++ 
(++ 
$"++ 
	Message: ++ "
{++" #
message++# *
}++* +
"+++ ,
)++, -
;++- .
},, 
;,, 
channel.. 
... 
BasicConsume.. 
(.. 
queue.. 
:.. 
$str..  *
,..* +
autoAck//  
://  !
true//" &
,//& '
consumer00 !
:00! "
consumer00# +
)00+ ,
;00, -
Console11 
.11 
ReadKey11 
(11 
)11 
;11 
}33 
}55 
}66 
}77 û
fE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\MessageBrokers\RabbitMq\MqQueueHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
MessageBrokers '
.' (
RabbitMq( 0
{ 
public 

class 
MqQueueHelper 
:   
IMessageBrokerHelper! 5
{		 
public

 
IConfiguration

 
Configuration

 +
;

+ ,
private 
readonly  
MessageBrokerOptions -
_brokerOptions. <
;< =
public 
MqQueueHelper 
( 
IConfiguration +
configuration, 9
)9 :
{ 	
Configuration 
= 
configuration )
;) *
_brokerOptions 
= 
Configuration *
.* +

GetSection+ 5
(5 6
$str6 L
)L M
.M N
GetN Q
<Q R 
MessageBrokerOptionsR f
>f g
(g h
)h i
;i j
} 	
public 
void 
QueueMessage  
(  !
string! '
messageText( 3
)3 4
{ 	
var 
factory 
= 
new 
ConnectionFactory /
{ 
HostName 
= 
_brokerOptions )
.) *
HostName* 2
,2 3
UserName 
= 
_brokerOptions )
.) *
UserName* 2
,2 3
Password 
= 
_brokerOptions )
.) *
Password* 2
} 
; 
using 
( 
var 

connection !
=" #
factory$ +
.+ ,
CreateConnection, <
(< =
)= >
)> ?
using 
( 
var 
channel 
=  

connection! +
.+ ,
CreateModel, 7
(7 8
)8 9
)9 :
{ 
channel 
. 
QueueDeclare $
($ %
queue 
: 
$str )
,) *
durable 
:  
false! &
,& '
	exclusive   !
:  ! "
false  # (
,  ( )

autoDelete!! "
:!!" #
false!!$ )
,!!) *
	arguments"" !
:""! "
null""# '
)""' (
;""( )
var$$ 
message$$ 
=$$ 
JsonConvert$$ )
.$$) *
SerializeObject$$* 9
($$9 :
messageText$$: E
)$$E F
;$$F G
var%% 
body%% 
=%% 
Encoding%% #
.%%# $
UTF8%%$ (
.%%( )
GetBytes%%) 1
(%%1 2
message%%2 9
)%%9 :
;%%: ;
channel'' 
.'' 
BasicPublish'' $
(''$ %
exchange''% -
:''- .
$str''/ 1
,''1 2

routingKey''3 =
:''= >
$str''? I
,''I J
basicProperties''K Z
:''Z [
null''\ `
,''` a
body''b f
:''f g
body''h l
)''l m
;''m n
}(( 
})) 	
}** 
}++ Û
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Messages\AspectMessages.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Messages !
{ 
public 

static 
class 
AspectMessages &
{ 
public 
static 
string 
WrongValidationType 0
=>1 3
$str4 L
;L M
public 
static 
string 
WrongLoggerType ,
=>- /
$str0 C
;C D
} 
}		 Ì
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Messages\ExceptionMessage.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Messages !
{ 
public 

static 
class 
ExceptionMessage (
{ 
public 
static 
string 
InternalServerError 0
=>1 3
$str4 _
;_ `
} 
} ô
YE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Messages\SwaggerMessages.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Messages !
{ 
public 

static 
class 
SwaggerMessages '
{ 
public 
static 
string 
Version $
=>% '
$str( ,
;, -
public 
static 
string 
Title "
=># %
$str& +
;+ ,
public 
static 
string 
TermsOfService +
=>, .
$str/ J
;J K
public 
static 
string 
ContactName (
=>) +
$str, 9
;9 :
public		 
static		 
string		 
LicenceName		 (
=>		) +
$str		, <
;		< =
public

 
static

 
string

 
ContactEMail

 )
=>

* ,
$str

- =
;

= >
public 
static 
string 

ContactUrl '
=>( *
$str+ B
;B C
public 
static 
string 

LicenceUrl '
=>( *
$str+ H
;H I
public 
static 
string 
Description (
=>) +
$str, .
;. /
public 
static 
string 
Description1 )
=>* ,
$str	è- 
;
èè 
}
êê 
}ëë €

SE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\DataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 

DataResult 
< 
T 
> 
: 
Result %
,% &
IDataResult' 2
<2 3
T3 4
>4 5
{ 
public 


DataResult 
( 
T 
data 
, 
bool "
success# *
,* +
string, 2
message3 :
): ;
:< =
base> B
(B C
successC J
,J K
messageL S
)S T
{ 
Data 

= 
data 
; 
} 
public

 


DataResult

 
(

 
T

 
data

 
,

 
bool

 "
success

# *
)

* +
:

, -
base

. 2
(

2 3
success

3 :
)

: ;
{ 
Data 

= 
data 
; 
} 
public 

T 
Data 
{ 
get 
; 
} 
} 
} π
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\ErrorDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 
ErrorDataResult 
< 
T  
>  !
:" #

DataResult$ .
<. /
T/ 0
>0 1
{ 
public 

ErrorDataResult 
( 
T 
data !
,! "
string# )
message* 1
)1 2
:3 4
base5 9
(9 :
data: >
,> ?
false@ E
,E F
messageG N
)N O
{ 
} 
public		 

ErrorDataResult		 
(		 
T		 
data		 !
)		! "
:		# $
base		% )
(		) *
data		* .
,		. /
false		0 5
)		5 6
{

 
} 
public 

ErrorDataResult 
( 
string !
message" )
)) *
:+ ,
base- 1
(1 2
default2 9
,9 :
false; @
,@ A
messageB I
)I J
{ 
} 
public 

ErrorDataResult 
( 
) 
: 
base #
(# $
default$ +
,+ ,
false- 2
)2 3
{ 
} 
} 
} •
TE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\ErrorResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 
ErrorResult 
: 
Result #
{ 
public 

ErrorResult 
( 
string 
message %
)% &
:' (
base) -
(- .
false. 3
,3 4
message5 <
)< =
{ 
} 
public		 

ErrorResult		 
(		 
)		 
:		 
base		 
(		  
false		  %
)		% &
{

 
} 
} 
} Ñ
TE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\IDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
	interface	 
IDataResult 
< 
out "
T# $
>$ %
:& '
IResult( /
{ 
T 
Data 

{ 
get 
; 
} 
} 
} á
PE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\IResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
	interface	 
IResult 
{ 
bool 
Success	 
{ 
get 
; 
} 
string 

Message 
{ 
get 
; 
} 
} 
} ˇ
OE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\Result.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 
Result 
: 
IResult 
{ 
public 

Result 
( 
bool 
success 
, 
string  &
message' .
). /
:0 1
this2 6
(6 7
success7 >
)> ?
{ 
Message 
= 
message 
; 
} 
public

 

Result

 
(

 
bool

 
success

 
)

 
{ 
Success 
= 
success 
; 
} 
public 

bool 
Success 
{ 
get 
; 
}  
public 

string 
Message 
{ 
get 
;  
}! "
} 
} ¡
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\SuccessDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 
SuccessDataResult  
<  !
T! "
>" #
:$ %

DataResult& 0
<0 1
T1 2
>2 3
{ 
public 

SuccessDataResult 
( 
T 
data #
,# $
string% +
message, 3
)3 4
:5 6
base7 ;
(; <
data< @
,@ A
trueB F
,F G
messageH O
)O P
{ 
} 
public		 

SuccessDataResult		 
(		 
T		 
data		 #
)		# $
:		% &
base		' +
(		+ ,
data		, 0
,		0 1
true		2 6
)		6 7
{

 
} 
public 

SuccessDataResult 
( 
string #
message$ +
)+ ,
:- .
base/ 3
(3 4
default4 ;
,; <
true= A
,A B
messageC J
)J K
{ 
} 
public 

SuccessDataResult 
( 
) 
:  
base! %
(% &
default& -
,- .
true/ 3
)3 4
{ 
} 
} 
} ´
VE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Results\SuccessResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public 
class	 
SuccessResult 
: 
Result %
{ 
public 

SuccessResult 
( 
string 
message  '
)' (
:) *
base+ /
(/ 0
true0 4
,4 5
message6 =
)= >
{ 
} 
public		 

SuccessResult		 
(		 
)		 
:		 
base		 !
(		! "
true		" &
)		& '
{

 
} 
} 
} ·
eE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Encyption\SecurityKeyHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
	Encyption" +
{ 
public 

static 
class 
SecurityKeyHelper )
{ 
public 
static 
SecurityKey !
CreateSecurityKey" 3
(3 4
string4 :
securityKey; F
)F G
{		 	
return

 
new

  
SymmetricSecurityKey

 +
(

+ ,
Encoding

, 4
.

4 5
UTF8

5 9
.

9 :
GetBytes

: B
(

B C
securityKey

C N
)

N O
)

O P
;

P Q
} 	
} 
} Â
lE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Encyption\SigningCredentialsHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
	Encyption" +
{ 
public 

static 
class $
SigningCredentialsHelper 0
{		 
public

 
static

 
SigningCredentials

 ($
CreateSigningCredentials

) A
(

A B
SecurityKey

B M
securityKey

N Y
)

Y Z
{ 	
return 
new 
SigningCredentials )
() *
securityKey* 5
,5 6
SecurityAlgorithms7 I
.I J
HmacSha256SignatureJ ]
)] ^
;^ _
} 	
} 
} Î
_E:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Hashing\HashingHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Hashing" )
{ 
public 

static 
class 
HashingHelper %
{ 
public 
static 
void 
CreatePasswordHash -
(- .
string. 4
password5 =
,= >
out? B
byteC G
[G H
]H I
passwordHashJ V
,V W
outX [
byte\ `
[` a
]a b
passwordSaltc o
)o p
{		 	
using

 
(

 
var

 
hmac

 
=

 
new

 !

HMACSHA512

" ,
(

, -
)

- .
)

. /
{ 
passwordSalt 
= 
hmac #
.# $
Key$ '
;' (
passwordHash 
= 
hmac #
.# $
ComputeHash$ /
(/ 0
Encoding0 8
.8 9
UTF89 =
.= >
GetBytes> F
(F G
passwordG O
)O P
)P Q
;Q R
} 
} 	
public 
static 
bool 
VerifyPasswordHash -
(- .
string. 4
password5 =
,= >
byte? C
[C D
]D E
passwordHashF R
,R S
byteT X
[X Y
]Y Z
passwordSalt[ g
)g h
{ 	
using 
( 
var 
hmac 
= 
new !

HMACSHA512" ,
(, -
passwordSalt- 9
)9 :
): ;
{ 
var 
computedHash  
=! "
hmac# '
.' (
ComputeHash( 3
(3 4
Encoding4 <
.< =
UTF8= A
.A B
GetBytesB J
(J K
passwordK S
)S T
)T U
;U V
for 
( 
int 
i 
= 
$num 
; 
i  !
<" #
computedHash$ 0
.0 1
Length1 7
;7 8
i9 :
++: <
)< =
{ 
if 
( 
computedHash $
[$ %
i% &
]& '
!=( *
passwordHash+ 7
[7 8
i8 9
]9 :
): ;
{ 
return 
false $
;$ %
} 
} 
} 
return 
true 
; 
}   	
}!! 
}"" «
YE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Jwt\AccessToken.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Jwt" %
{ 
public 
class	 
AccessToken 
: 
IAccessToken )
{ 
public		 

string		 
Token		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
public

 

DateTime

 

Expiration

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} ¸
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Jwt\IAccessToken.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Jwt" %
{ 
public 
	interface 
IAccessToken 
{ 
DateTime 


Expiration 
{ 
get 
; 
set  
;  !
}" #
string 
Token	 
{ 
get 
; 
set 
; 
} 
}		 
}

 ∫
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Jwt\ITokenHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Jwt" %
{ 
public 
	interface	 
ITokenHelper 
{		 
TAccessToken

 
CreateToken

 
<

 
TAccessToken

 )
>

) *
(

* +
User

+ /
user

0 4
,

4 5
IEnumerable

6 A
<

A B
OperationClaim

B P
>

P Q
operationClaims

R a
)

a b
where 
TAccessToken 
: 
IAccessToken '
,' (
new) ,
(, -
)- .
;. /
} 
} ¥=
WE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Jwt\JwtHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Jwt" %
{ 
public 
class 
	JwtHelper 
: 
ITokenHelper &
{ 
public 
IConfiguration	 
Configuration %
{& '
get( +
;+ ,
}- .
private 	
readonly
 
TokenOptions 
_tokenOptions  -
;- .
private 	
DateTime
 "
_accessTokenExpiration )
;) *
public 
	JwtHelper	 
( 
IConfiguration !
configuration" /
)/ 0
{ 
Configuration 
= 
configuration  
;  !
_tokenOptions 
= 
Configuration  
.  !

GetSection! +
(+ ,
$str, :
): ;
.; <
Get< ?
<? @
TokenOptions@ L
>L M
(M N
)N O
;O P
} 
public 
string	 
DecodeToken 
( 
string "
input# (
)( )
{ 
var 
handler 
= 
new #
JwtSecurityTokenHandler ,
(, -
)- .
;. /
if 
( 
input 
. 

StartsWith 
( 
$str !
)! "
)" #
input 	
=
 
input 
. 
	Substring 
( 
$str %
.% &
Length& ,
), -
;- .
return   	
handler  
 
.   
ReadJwtToken   
(   
input   $
)  $ %
.  % &
ToString  & .
(  . /
)  / 0
;  0 1
}!! 
public## 
TAccessToken##	 
CreateToken## !
<##! "
TAccessToken##" .
>##. /
(##/ 0
User##0 4
user##5 9
,##9 :
IEnumerable##; F
<##F G
OperationClaim##G U
>##U V
operationClaims##W f
)##f g
where$$ 
TAccessToken$$	 
:$$ 
IAccessToken$$ $
,$$$ %
new$$& )
($$) *
)$$* +
{%% "
_accessTokenExpiration&& 
=&& 
DateTime&& $
.&&$ %
Now&&% (
.&&( )

AddMinutes&&) 3
(&&3 4
_tokenOptions&&4 A
.&&A B!
AccessTokenExpiration&&B W
)&&W X
;&&X Y
var'' 
securityKey'' 
='' 
SecurityKeyHelper'' &
.''& '
CreateSecurityKey''' 8
(''8 9
_tokenOptions''9 F
.''F G
SecurityKey''G R
)''R S
;''S T
var(( 
signingCredentials(( 
=(( $
SigningCredentialsHelper(( 4
.((4 5$
CreateSigningCredentials((5 M
(((M N
securityKey((N Y
)((Y Z
;((Z [
var)) 
jwt)) 

=)) "
CreateJwtSecurityToken)) #
())# $
_tokenOptions))$ 1
,))1 2
user))3 7
,))7 8
signingCredentials))9 K
,))K L
operationClaims))M \
)))\ ]
;))] ^
var** #
jwtSecurityTokenHandler** 
=**  
new**! $#
JwtSecurityTokenHandler**% <
(**< =
)**= >
;**> ?
var++ 
token++ 
=++ #
jwtSecurityTokenHandler++ &
.++& '

WriteToken++' 1
(++1 2
jwt++2 5
)++5 6
;++6 7
return-- 	
new--
 
TAccessToken-- 
(-- 
)-- 
{.. 
Token// 	
=//
 
token// 
,// 

Expiration00 
=00 "
_accessTokenExpiration00 '
}11 
;11 
}22 
public44 
JwtSecurityToken44	 "
CreateJwtSecurityToken44 0
(440 1
TokenOptions441 =
tokenOptions44> J
,44J K
User44L P
user44Q U
,44U V
SigningCredentials55 
signingCredentials55 )
,55) *
IEnumerable55+ 6
<556 7
OperationClaim557 E
>55E F
operationClaims55G V
)55V W
{66 
var77 
jwt77 

=77 
new77 
JwtSecurityToken77 !
(77! "
issuer88 
:88 
tokenOptions88 
.88 
Issuer88  
,88  !
audience99 
:99 
tokenOptions99 
.99 
Audience99 $
,99$ %
expires:: 
::: "
_accessTokenExpiration:: $
,::$ %
	notBefore;; 
:;; 
DateTime;; 
.;; 
Now;; 
,;; 
claims<< 
:<< 
	SetClaims<< 
(<< 
user<< 
,<< 
operationClaims<< ,
)<<, -
,<<- .
signingCredentials== 
:== 
signingCredentials== +
)>> 
;>> 
return?? 	
jwt??
 
;?? 
}@@ 
privateBB 	
IEnumerableBB
 
<BB 
ClaimBB 
>BB 
	SetClaimsBB &
(BB& '
UserBB' +
userBB, 0
,BB0 1
IEnumerableBB2 =
<BB= >
OperationClaimBB> L
>BBL M
operationClaimsBBN ]
)BB] ^
{CC 
varDD 
claimsDD 
=DD 
newDD 
ListDD 
<DD 
ClaimDD 
>DD 
(DD  
)DD  !
;DD! "
claimsEE 	
.EE	 

AddNameIdentifierEE
 
(EE 
userEE  
.EE  !
UserIdEE! '
.EE' (
ToStringEE( 0
(EE0 1
)EE1 2
)EE2 3
;EE3 4
ifFF 
(FF 
userFF 
.FF 
	CitizenIdFF 
>FF 
$numFF 
)FF 
claimsGG 

.GG
 #
AddNameUniqueIdentifierGG "
(GG" #
userGG# '
.GG' (
	CitizenIdGG( 1
.GG1 2
ToStringGG2 :
(GG: ;
)GG; <
)GG< =
;GG= >
ifHH 
(HH 
!HH 
stringHH 
.HH 
IsNullOrEmptyHH 
(HH 
userHH !
.HH! "
FullNameHH" *
)HH* +
)HH+ ,
claimsII 

.II
 
AddNameII 
(II 
$"II 
{II 
userII 
.II 
FullNameII #
}II# $
"II$ %
)II% &
;II& '
claimsJJ 	
.JJ	 

AddRolesJJ
 
(JJ 
operationClaimsJJ "
.JJ" #
SelectJJ# )
(JJ) *
cJJ* +
=>JJ, .
cJJ/ 0
.JJ0 1
NameJJ1 5
)JJ5 6
.JJ6 7
ToArrayJJ7 >
(JJ> ?
)JJ? @
)JJ@ A
;JJA B
claimsLL 	
.LL	 

AddLL
 
(LL 
newLL 
ClaimLL 
(LL 

ClaimTypesLL "
.LL" #
RoleLL# '
,LL' (
userLL) -
.LL- .&
AuthenticationProviderTypeLL. H
)LLH I
)LLI J
;LLJ K
returnOO 	
claimsOO
 
;OO 
}PP 
}RR 
}SS ‚
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Security\Jwt\TokenOptions.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Jwt" %
{ 
public 
class	 
TokenOptions 
{ 
public		 

string		 
Audience		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 

string

 
Issuer

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 

int !
AccessTokenExpiration $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
SecurityKey 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ‰
WE:\src\NewGenSource\NorthwindBackend\Sennedjem\Core\Utilities\Toolkit\RandomPassword.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Toolkit  
{ 
public 

static 
class 
RandomPassword &
{ 
public		 
static		 
string		  
CreateRandomPassword		 1
(		1 2
int		2 5
length		6 <
=		= >
$num		? A
)		A B
{

 	
string 

validChars 
= 
$str  j
;j k
var 
random 
= 
new 
Random #
(# $
)$ %
;% &
char 
[ 
] 
chars 
= 
new 
char #
[# $
length$ *
]* +
;+ ,
for 
( 
int 
i 
= 
$num 
; 
i 
< 
length  &
;& '
i( )
++) +
)+ ,
{ 
chars 
[ 
i 
] 
= 

validChars %
[% &
random& ,
., -
Next- 1
(1 2
$num2 3
,3 4

validChars5 ?
.? @
Length@ F
)F G
]G H
;H I
} 
return 
new 
string 
( 
chars #
)# $
;$ %
} 	
public 
static 
int !
RandomNumberGenerator /
(/ 0
int0 3
min4 7
=8 9
$num: @
,@ A
intB E
maxF I
=J K
$numL R
)R S
{ 	
var 
random 
= 
new 
Random #
(# $
)$ %
;% &
return 
random 
. 
Next 
( 
min "
," #
max$ '
)' (
;( )
} 	
} 
} 