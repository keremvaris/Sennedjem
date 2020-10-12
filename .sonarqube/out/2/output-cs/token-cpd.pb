ç
WE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IAnimalRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 

	interface 
IAnimalRepository &
:' (
IEntityRepository) :
<: ;
Animal; A
>A B
{ 
}		 
}

 î
YE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\ICustomerRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 

	interface 
ICustomerRepository (
:) *
IMongoDbRepository+ =
<= >
Customer> F
>F G
{ 
}

 
} ô
[E:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IGroupClaimRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	 !
IGroupClaimRepository (
:) *
IEntityRepository+ <
<< =

GroupClaim= G
>G H
{ 
} 
}		 ä
VE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IGroupRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	 
IGroupRepository #
:$ %
IEntityRepository& 7
<7 8
Group8 =
>= >
{ 
} 
}		 ú
\E:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IMobileLoginRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface "
IMobileLoginRepository (
:) *
IEntityRepository+ <
<< =
MobileLogin= H
>H I
{ 
} 
} •
_E:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IOperationClaimRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	 %
IOperationClaimRepository ,
:- .
IEntityRepository/ @
<@ A
OperationClaimA O
>O P
{ 
} 
}		 ê
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IProductRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 

	interface 
IProductRepository '
:( )
IEntityRepository* ;
<; <
Product< C
>C D
{ 
}		 
}

 ñ
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserClaimRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	  
IUserClaimRepository '
:( )
IEntityRepository* ;
<; <
	UserClaim< E
>E F
{ 
} 
}		 ñ
ZE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserGroupRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	  
IUserGroupRepository '
:( )
IEntityRepository* ;
<; <
	UserGroup< E
>E F
{ 
} 
}		 º
UE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserRepository.cs
	namespace 	

DataAccess
 
. 
Abstract 
{ 
public 
	interface	 
IUserRepository "
:# $
IEntityRepository% 6
<6 7
User7 ;
>; <
{ 
List 
< 	
OperationClaim	 
> 
	GetClaims "
(" #
int# &
userId' -
)- .
;. /
} 
} À	
nE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\AnimalEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{		 
public

 

class

 %
AnimalEntityConfiguration

 *
:

+ ,$
IEntityTypeConfiguration

- E
<

E F
Animal

F L
>

L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Animal0 6
>6 7
builder8 ?
)? @
{ 	
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
AnimalId" *
)* +
;+ ,
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

AnimalName$ .
). /
./ 0
HasMaxLength0 <
(< =
$num= ?
)? @
.@ A

IsRequiredA K
(K L
)L M
;M N
} 	
} 
} Ò
rE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\GroupClaimEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 )
GroupClaimEntityConfiguration ,
:- .$
IEntityTypeConfiguration/ G
<G H

GroupClaimH R
>R S
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,

GroupClaim		, 6
>		6 7
builder		8 ?
)		? @
{

 
builder 
. 
HasKey 
( 
x 
=> 
new 
{ 
x  !
.! "
GroupId" )
,) *
x+ ,
., -
ClaimId- 4
}5 6
)6 7
;7 8
} 
} 
} ¿	
mE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\GroupEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 $
GroupEntityConfiguration '
:( )$
IEntityTypeConfiguration* B
<B C
GroupC H
>H I
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
Group		, 1
>		1 2
builder		3 :
)		: ;
{

 
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id 
) 
;  
builder 
. 
Property 
( 
x 
=> 
x 
. 
	GroupName '
)' (
.( )
HasMaxLength) 5
(5 6
$num6 8
)8 9
.9 :

IsRequired: D
(D E
)E F
;F G
} 
} 
} å
sE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\MobileLoginEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 *
MobileLoginEntityConfiguration -
:. /$
IEntityTypeConfiguration0 H
<H I
MobileLoginI T
>T U
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
MobileLogin		, 7
>		7 8
builder		9 @
)		@ A
{

 
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id 
) 
;  
builder 
. 
Property 
( 
x 
=> 
x 
. 
Code "
)" #
.# $
HasMaxLength$ 0
(0 1
$num1 3
)3 4
.4 5

IsRequired5 ?
(? @
)@ A
;A B
builder 
. 
Property 
( 
x 
=> 
x 
. 
Provider &
)& '
. 	

IsRequired	 
( 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
. 
ExternalUserId ,
), -
. 	
HasMaxLength	 
( 
$num 
) 
. 	

IsRequired	 
( 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
. 
SendDate &
)& '
;' (
builder 
. 
Property 
( 
x 
=> 
x 
. 
IsSend $
)$ %
;% &
builder 
. 
Property 
( 
x 
=> 
x 
. 
IsUsed $
)$ %
;% &
builder 
. 
HasIndex 
( 
x 
=> 
new 
{  !
x" #
.# $
ExternalUserId$ 2
,2 3
x4 5
.5 6
Provider6 >
}? @
)@ A
;A B
} 
} 
} ﬂ	
vE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\OperationClaimEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 -
!OperationClaimEntityConfiguration 0
:1 2$
IEntityTypeConfiguration3 K
<K L
OperationClaimL Z
>Z [
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
OperationClaim		, :
>		: ;
builder		< C
)		C D
{

 
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id 
) 
;  
builder 
. 
Property 
( 
x 
=> 
x 
. 
Name "
)" #
.# $
HasMaxLength$ 0
(0 1
$num1 3
)3 4
.4 5

IsRequired5 ?
(? @
)@ A
;A B
} 
} 
} Ï
qE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\UserClaimEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 (
UserClaimEntityConfiguration +
:, -$
IEntityTypeConfiguration. F
<F G
	UserClaimG P
>P Q
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
	UserClaim		, 5
>		5 6
builder		7 >
)		> ?
{

 
builder 
. 
HasKey 
( 
x 
=> 
new 
{ 
x  !
.! "
UserId" (
,( )
x* +
.+ ,
ClaimId, 3
}4 5
)5 6
;6 7
} 
} 
} ≠
lE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\UserEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 #
UserEntityConfiguration &
:' ($
IEntityTypeConfiguration) A
<A B
UserB F
>F G
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
User		, 0
>		0 1
builder		2 9
)		9 :
{

 
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
UserId "
)" #
;# $
builder 
. 
Property 
( 
x 
=> 
x 
. 
	CitizenId '
)' (
.( )

IsRequired) 3
(3 4
)4 5
;5 6
builder 
. 
Property 
( 
x 
=> 
x 
. 
FullName &
)& '
.' (
HasMaxLength( 4
(4 5
$num5 8
)8 9
.9 :

IsRequired: D
(D E
)E F
;F G
builder 
. 
Property 
( 
x 
=> 
x 
. 
Email #
)# $
.$ %
HasMaxLength% 1
(1 2
$num2 4
)4 5
;5 6
builder 
. 
Property 
( 
x 
=> 
x 
. 
Status $
)$ %
.% &

IsRequired& 0
(0 1
)1 2
;2 3
builder 
. 
Property 
( 
x 
=> 
x 
. 
	BirthDate '
)' (
;( )
builder 
. 
Property 
( 
x 
=> 
x 
. 
Gender $
)$ %
;% &
builder 
. 
Property 
( 
x 
=> 
x 
. 

RecordDate (
)( )
;) *
builder 
. 
Property 
( 
x 
=> 
x 
. 
Address %
)% &
.& '
HasMaxLength' 3
(3 4
$num4 7
)7 8
;8 9
builder 
. 
Property 
( 
x 
=> 
x 
. 
MobilePhones *
)* +
.+ ,
HasMaxLength, 8
(8 9
$num9 ;
); <
;< =
builder 
. 
Property 
( 
x 
=> 
x 
. 
Notes #
)# $
.$ %
HasMaxLength% 1
(1 2
$num2 5
)5 6
;6 7
builder 
. 
HasIndex 
( 
x 
=> 
x 
. 
	CitizenId '
)' (
;( )
builder 
. 
HasIndex 
( 
x 
=> 
x 
. 
MobilePhones *
)* +
;+ ,
} 
} 
} Ï
qE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\Configurations\UserGroupEntityConfiguration.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
Configurations ,
{ 
public 
class	 (
UserGroupEntityConfiguration +
:, -$
IEntityTypeConfiguration. F
<F G
	UserGroupG P
>P Q
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
	UserGroup		, 5
>		5 6
builder		7 >
)		> ?
{

 
builder 
. 
HasKey 
( 
x 
=> 
new 
{ 
x  !
.! "
UserId" (
,( )
x* +
.+ ,
GroupId, 3
}4 5
)5 6
;6 7
} 
} 
} ê
fE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\AnimalRepository.cs
	namespace		 	

DataAccess		
 
.		 
Concrete		 
.		 
EntityFramework		 -
{

 
public 

class 
AnimalRepository !
:" #"
EfEntityRepositoryBase$ :
<: ;
Animal; A
,A B
NewDbContextC O
>O P
,P Q
IAnimalRepositoryR c
{ 
public 
AnimalRepository 
(  
NewDbContext  ,
context- 4
)4 5
:6 7
base8 <
(< =
context= D
)D E
{ 	
} 	
} 
} è
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\ContextExtensions.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
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
}// ù
jE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\Contexts\MsDbContext.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
.- .
Contexts. 6
{ 
public 

sealed 
class 
MsDbContext #
:$ %
ProjectDbContext& 6
{ 
public 
MsDbContext 
( 
DbContextOptions +
<+ ,
MsDbContext, 7
>7 8
options9 @
,@ A
IConfigurationB P
configurationQ ^
)^ _
:` a
baseb f
(f g
optionsg n
,n o
configurationp }
)} ~
{		 	
}

 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
if 
( 
! 
optionsBuilder 
.  
IsConfigured  ,
), -
{ 
base 
. 
OnConfiguring "
(" #
optionsBuilder# 1
.1 2
UseSqlServer2 >
(> ?
configuration? L
.L M
GetConnectionStringM `
(` a
$stra o
)o p
)p q
)q r
;r s
} 
} 	
} 
} ø
kE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\Contexts\NewDbContext.cs
	namespace		 	

DataAccess		
 
.		 
Concrete		 
.		 
EntityFramework		 -
.		- .
Contexts		. 6
{

 
public 

class 
NewDbContext 
: 
	DbContext  )
{ 
	protected 
readonly 
IConfiguration )
configuration* 7
;7 8
public 
NewDbContext 
( 
DbContextOptions ,
<, -
NewDbContext- 9
>9 :
options; B
,B C
IConfigurationD R
configurationS `
)` a
: 
base 
( 
options 
) 
{ 	
this 
. 
configuration 
=  
configuration! .
;. /
} 	
	protected&& 
NewDbContext&& 
(&& 
DbContextOptions&& /
options&&0 7
,&&7 8
IConfiguration&&9 G
configuration&&H U
)&&U V
:'' 
base'' 
('' 
options'' 
)'' 
{(( 	
this)) 
.)) 
configuration)) 
=))  
configuration))! .
;)). /
}** 	
	protected,, 
override,, 
void,, 
OnConfiguring,,  -
(,,- .#
DbContextOptionsBuilder,,. E
optionsBuilder,,F T
),,T U
{-- 	
if.. 
(.. 
!.. 
optionsBuilder.. 
...  
IsConfigured..  ,
).., -
{// 
base00 
.00 
OnConfiguring00 "
(00" #
optionsBuilder00# 1
.001 2
UseSqlServer002 >
(00> ?
configuration00? L
.00L M
GetConnectionString00M `
(00` a
$str00a o
)00o p
)00p q
)00q r
;00r s
}11 
}22 	
public99 
DbSet99 
<99 
Animal99 
>99 
Animals99 $
{99% &
get99' *
;99* +
set99, /
;99/ 0
}991 2
};; 
}<< è.
oE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\Contexts\ProjectDbContext.cs
	namespace		 	

DataAccess		
 
.		 
Concrete		 
.		 
EntityFramework		 -
.		- .
Contexts		. 6
{

 
public 

class 
ProjectDbContext !
:" #
	DbContext$ -
{ 
	protected 
readonly 
IConfiguration )
configuration* 7
;7 8
public 
ProjectDbContext 
(  
DbContextOptions  0
<0 1
ProjectDbContext1 A
>A B
optionsC J
,J K
IConfigurationL Z
configuration[ h
)h i
: 
base 
( 
options 
) 
{ 	
this 
. 
configuration 
=  
configuration! .
;. /
} 	
	protected&& 
ProjectDbContext&& "
(&&" #
DbContextOptions&&# 3
options&&4 ;
,&&; <
IConfiguration&&= K
configuration&&L Y
)&&Y Z
:'' 
base'' 
('' 
options'' 
)'' 
{(( 	
this)) 
.)) 
configuration)) 
=))  
configuration))! .
;)). /
}** 	
	protected-- 
override-- 
void-- 
OnModelCreating--  /
(--/ 0
ModelBuilder--0 <
modelBuilder--= I
)--I J
{.. 	
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /#
UserEntityConfiguration//0 G
(//G H
)//H I
)//I J
;//J K
modelBuilder00 
.00 
ApplyConfiguration00 +
(00+ ,
new00, /*
MobileLoginEntityConfiguration000 N
(00N O
)00O P
)00P Q
;00Q R
modelBuilder11 
.11 
ApplyConfiguration11 +
(11+ ,
new11, /$
GroupEntityConfiguration110 H
(11H I
)11I J
)11J K
;11K L
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /(
UserGroupEntityConfiguration220 L
(22L M
)22M N
)22N O
;22O P
modelBuilder33 
.33 
ApplyConfiguration33 +
(33+ ,
new33, /(
UserClaimEntityConfiguration330 L
(33L M
)33M N
)33N O
;33O P
modelBuilder44 
.44 
ApplyConfiguration44 +
(44+ ,
new44, /)
GroupClaimEntityConfiguration440 M
(44M N
)44N O
)44O P
;44P Q
modelBuilder55 
.55 
ApplyConfiguration55 +
(55+ ,
new55, /(
UserGroupEntityConfiguration550 L
(55L M
)55M N
)55N O
;55O P
}66 	
	protected77 
override77 
void77 
OnConfiguring77  -
(77- .#
DbContextOptionsBuilder77. E
optionsBuilder77F T
)77T U
{88 	
if99 
(99 
!99 
optionsBuilder99 
.99  
IsConfigured99  ,
)99, -
{:: 
base;; 
.;; 
OnConfiguring;; "
(;;" #
optionsBuilder;;# 1
.;;1 2
	UseNpgsql;;2 ;
(;;; <
configuration;;< I
.;;I J
GetConnectionString;;J ]
(;;] ^
$str;;^ l
);;l m
);;m n
);;n o
;;;o p
}<< 
}== 	
publicCC 
DbSetCC 
<CC 
OperationClaimCC #
>CC# $
OperationClaimsCC% 4
{CC5 6
getCC7 :
;CC: ;
setCC< ?
;CC? @
}CCA B
publicDD 
DbSetDD 
<DD 
	UserClaimDD 
>DD 

UserClaimsDD  *
{DD+ ,
getDD- 0
;DD0 1
setDD2 5
;DD5 6
}DD7 8
publicEE 
DbSetEE 
<EE 
GroupEE 
>EE 
GroupsEE "
{EE# $
getEE% (
;EE( )
setEE* -
;EE- .
}EE/ 0
publicFF 
DbSetFF 
<FF 
	UserGroupFF 
>FF 

UserGroupsFF  *
{FF+ ,
getFF- 0
;FF0 1
setFF2 5
;FF5 6
}FF7 8
publicGG 
DbSetGG 
<GG 
UserGG 
>GG 
UsersGG  
{GG! "
getGG# &
;GG& '
setGG( +
;GG+ ,
}GG- .
publicHH 
DbSetHH 
<HH 

GroupClaimHH 
>HH  
GroupClaimsHH! ,
{HH- .
getHH/ 2
;HH2 3
setHH4 7
;HH7 8
}HH9 :
publicII 
DbSetII 
<II 
LogII 
>II 
LogsII 
{II  
getII! $
;II$ %
setII& )
;II) *
}II+ ,
publicJJ 
DbSetJJ 
<JJ 
MobileLoginJJ  
>JJ  !
MobileLoginsJJ" .
{JJ/ 0
getJJ1 4
;JJ4 5
setJJ6 9
;JJ9 :
}JJ; <
publicKK 
DbSetKK 
<KK 
AnimalKK 
>KK 
AnimalsKK $
{KK% &
getKK' *
;KK* +
setKK, /
;KK/ 0
}KK1 2
publicLL 
DbSetLL 
<LL 
ProductLL 
>LL 
ProductsLL &
{LL' (
getLL) ,
;LL, -
setLL. 1
;LL1 2
}LL3 4
}MM 
}NN ¨
jE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\GroupClaimRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	  
GroupClaimRepository #
:$ %"
EfEntityRepositoryBase& <
<< =

GroupClaim= G
,G H
ProjectDbContextI Y
>Y Z
,Z [!
IGroupClaimRepository\ q
{		 
public

 
 
GroupClaimRepository

 
(

  
ProjectDbContext

  0
context

1 8
)

8 9
:

: ;
base

< @
(

@ A
context

A H
)

H I
{ 
} 
} 
} ì
eE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\GroupRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	 
GroupRepository 
:  "
EfEntityRepositoryBase! 7
<7 8
Group8 =
,= >
ProjectDbContext? O
>O P
,P Q
IGroupRepositoryR b
{		 
public

 

GroupRepository

 
(

 
ProjectDbContext

 +
context

, 3
)

3 4
:

5 6
base

7 ;
(

; <
context

< C
)

C D
{ 
} 
} 
} ±
kE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\MobileLoginRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	 !
MobileLoginRepository $
:% &"
EfEntityRepositoryBase' =
<= >
MobileLogin> I
,I J
ProjectDbContextK [
>[ \
,\ ]"
IMobileLoginRepository^ t
{		 
public

 
!
MobileLoginRepository

  
(

  !
ProjectDbContext

! 1
context

2 9
)

9 :
:

; <
base

= A
(

A B
context

B I
)

I J
{ 
} 
} 
} ¿
nE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\OperationClaimRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	 $
OperationClaimRepository '
:( )"
EfEntityRepositoryBase* @
<@ A
OperationClaimA O
,O P
ProjectDbContextQ a
>a b
,b c%
IOperationClaimRepositoryd }
{		 
public

 
$
OperationClaimRepository

 #
(

# $
ProjectDbContext

$ 4
context

5 <
)

< =
:

> ?
base

@ D
(

D E
context

E L
)

L M
{ 
} 
} 
} ù
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\ProductRepository.cs
	namespace		 	

DataAccess		
 
.		 
Concrete		 
.		 
EntityFramework		 -
{

 
public 

class 
ProductRepository "
:# $"
EfEntityRepositoryBase% ;
<; <
Product< C
,C D
ProjectDbContextE U
>U V
,V W
IProductRepositoryX j
{ 
public 
ProductRepository  
(  !
ProjectDbContext! 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
} 	
} 
} ß
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\UserClaimRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	 
UserClaimRepository "
:# $"
EfEntityRepositoryBase% ;
<; <
	UserClaim< E
,E F
ProjectDbContextG W
>W X
,X Y 
IUserClaimRepositoryZ n
{		 
public

 

UserClaimRepository

 
(

 
ProjectDbContext

 /
context

0 7
)

7 8
:

9 :
base

; ?
(

? @
context

@ G
)

G H
{ 
} 
} 
} ß
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\UserGroupRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 
class	 
UserGroupRepository "
:# $"
EfEntityRepositoryBase% ;
<; <
	UserGroup< E
,E F
ProjectDbContextG W
>W X
,X Y 
IUserGroupRepositoryZ n
{		 
public

 

UserGroupRepository

 
(

 
ProjectDbContext

 /
context

0 7
)

7 8
:

9 :
base

; ?
(

? @
context

@ G
)

G H
{ 
} 
} 
} ˛
dE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\UserRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{		 
public

 
class

 
UserRepository

 
:

 "
EfEntityRepositoryBase

 5
<

5 6
User

6 :
,

: ;
ProjectDbContext

< L
>

L M
,

M N
IUserRepository

O ^
{ 
public 
UserRepository	 
( 
ProjectDbContext (
context) 0
)0 1
:2 3
base4 8
(8 9
context9 @
)@ A
{ 
} 
public 
List	 
< 
OperationClaim 
> 
	GetClaims '
(' (
int( +
userId, 2
)2 3
{ 
var 
result 
= 
( 
from 
user 
in 
context %
.% &
Users& +
join
 
	userGroup 
in 
context #
.# $

UserGroups$ .
on/ 1
user2 6
.6 7
UserId7 =
equals> D
	userGroupE N
.N O
UserIdO U
join
 

groupClaim 
in 
context $
.$ %
GroupClaims% 0
on1 3
	userGroup4 =
.= >
GroupId> E
equalsF L

groupClaimM W
.W X
GroupIdX _
join
 
operationClaim 
in  
context! (
.( )
OperationClaims) 8
on9 ;

groupClaim< F
.F G
ClaimIdG N
equalsO U
operationClaimV d
.d e
Ide g
where
 
user 
. 
UserId 
== 
userId %
select
 
new 
{
 
operationClaim 
. 
Name 
}
 
) 
. 
Union
 
( 
from 
user 
in 
context $
.$ %
Users% *
join 
	userClaim 
in 
context &
.& '

UserClaims' 1
on2 4
user5 9
.9 :
UserId: @
equalsA G
	userClaimH Q
.Q R
UserIdR X
join 
operationClaim  
in! #
context$ +
.+ ,
OperationClaims, ;
on< >
	userClaim? H
.H I
ClaimIdI P
equalsQ W
operationClaimX f
.f g
Idg i
where 
user 
. 
UserId 
== !
userId" (
select   
new   
{!! 
operationClaim"" 
."" 
Name"" !
}## 
)$$ 	
;$$	 

return%% 	
result%%
 
.%% 
Select%% 
(%% 
x%% 
=>%% 
new%%  
OperationClaim%%! /
{%%0 1
Name%%2 6
=%%7 8
x%%9 :
.%%: ;
Name%%; ?
}%%@ A
)%%A B
.&& 
ToList&& 
(&& 
)&& 
;&& 
}'' 
}(( 
})) ï
eE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\MongoDb\Collections\Collections.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
MongoDb %
.% &
Collections& 1
{ 
public 

static 
class 
Collections #
{ 
public 
static 
string 
	Customers &
=>' )
$str* 5
;5 6
} 
} ß
dE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\MongoDb\Context\MongoDbContext.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
MongoDb %
.% &
Context& -
{ 
public 

class 
MongoDbContext 
:  !
MongoDbContextBase" 4
{ 
public		 
MongoDbContext		 
(		 
IConfiguration		 ,
configuration		- :
)		: ;
:		< =
base		> B
(		B C
configuration		C P
)		P Q
{

 	
} 	
} 
} ·	
hE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\MongoDb\Context\MongoDbContextBase.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
MongoDb %
.% &
Context& -
{ 
public 

abstract 
class 
MongoDbContextBase ,
{ 
public 
readonly 
IConfiguration &
configuration' 4
;4 5
public		 
readonly		 #
MongoConnectionSettings		 /#
mongoConnectionSettings		0 G
;		G H
	protected 
MongoDbContextBase $
($ %
IConfiguration% 3
configuration4 A
)A B
{ 	
this 
. 
configuration 
=  
configuration! .
;. /#
mongoConnectionSettings #
=$ %
configuration& 3
.3 4

GetSection4 >
(> ?
$str? P
)P Q
.Q R
GetR U
<U V#
MongoConnectionSettingsV m
>m n
(n o
)o p
;p q
} 	
} 
} ®
eE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\MongoDb\CustomerMongoRepository.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
MongoDb %
{ 
public 

class #
CustomerMongoRepository (
:) *!
MongoDbRepositoryBase+ @
<@ A
CustomerA I
>I J
,J K
ICustomerRepositoryL _
{		 
public

 #
CustomerMongoRepository

 &
(

& '
MongoDbContextBase

' 9
mongoDbContext

: H
,

H I
string

J P
collectionName

Q _
)

_ `
:

a b
base

c g
(

g h
mongoDbContext

h v
.

v w$
mongoConnectionSettings	

w é
,


é è
collectionName


ê û
)


û ü
{ 	
} 	
} 
} ∂
`E:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Entities\AuthenticationProviderType.cs
	namespace 	

DataAccess
 
. 
Entities 
{ 
public 
enum &
AuthenticationProviderType '
{ 
Unknown 
, 
Person 

,
 
Staff 	
,	 

Agent 	
} 
} π
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Entities\Dtos\SelectionItem.cs
	namespace 	

DataAccess
 
. 
Entities 
. 
Dtos "
{ 
public		 

class		 
SelectionItem		 
:		  
IDto		! %
{

 
public 
SelectionItem 
( 
) 
{ 	
} 	
public 
SelectionItem 
( 
int  
id! #
,# $
string% +
label, 1
)1 2
:3 4
this5 9
(9 :
id: <
.< =
ToString= E
(E F
)F G
,G H
labelI N
)N O
{ 	
} 	
public 
SelectionItem 
( 
string #
id$ &
,& '
string( .
label/ 4
)4 5
{ 	
this 
. 
Id 
= 
id 
; 
this 
. 
Label 
= 
label 
; 
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
ParentId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Label 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 

IsDisabled 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} î
IE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Entities\Log.cs
	namespace 	

DataAccess
 
. 
Entities 
{ 
public 

class 
Log 
: 
IEntity 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
	LogDetail		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
DateTime

 
Date

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
Audit 
{ 
get !
;! "
set# &
;& '
}( )
} 
} â
QE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Entities\MobileLogin.cs
	namespace 	

DataAccess
 
. 
Entities 
{ 
public 

class 
MobileLogin 
: 
IEntity &
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public &
AuthenticationProviderType )
Provider* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string 
ExternalUserId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
Code 
{ 
get 
; 
set "
;" #
}$ %
public 
DateTime 
SendDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsSend 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
IsUsed 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Á
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Ms\20201007074506_InitialCreate.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Ms  "
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
AnimalId 
= 
table $
.$ %
Column% +
<+ ,
int, /
>/ 0
(0 1
nullable1 9
:9 :
false; @
)@ A
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B

AnimalName 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
nullable6 >
:> ?
true@ D
)D E
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 1
,1 2
x3 4
=>5 7
x8 9
.9 :
AnimalId: B
)B C
;C D
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
nullable+ 3
:3 4
false5 :
): ;
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
	GroupName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
	maxLength5 >
:> ?
$num@ B
,B C
nullableD L
:L M
falseN S
)S T
} 
, 
constraints 
: 
table "
=># %
{   
table!! 
.!! 

PrimaryKey!! $
(!!$ %
$str!!% /
,!!/ 0
x!!1 2
=>!!3 5
x!!6 7
.!!7 8
Id!!8 :
)!!: ;
;!!; <
}"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
CreateTable$$ (
($$( )
name%% 
:%% 
$str%% "
,%%" #
columns&& 
:&& 
table&& 
=>&& !
new&&" %
{'' 
GroupId(( 
=(( 
table(( #
.((# $
Column(($ *
<((* +
int((+ .
>((. /
(((/ 0
nullable((0 8
:((8 9
false((: ?
)((? @
,((@ A
ClaimId)) 
=)) 
table)) #
.))# $
Column))$ *
<))* +
int))+ .
>)). /
())/ 0
nullable))0 8
:))8 9
false)): ?
)))? @
}** 
,** 
constraints++ 
:++ 
table++ "
=>++# %
{,, 
table-- 
.-- 

PrimaryKey-- $
(--$ %
$str--% 4
,--4 5
x--6 7
=>--8 :
new--; >
{--? @
x--A B
.--B C
GroupId--C J
,--J K
x--L M
.--M N
ClaimId--N U
}--V W
)--W X
;--X Y
}.. 
).. 
;.. 
migrationBuilder00 
.00 
CreateTable00 (
(00( )
name11 
:11 
$str11 #
,11# $
columns22 
:22 
table22 
=>22 !
new22" %
{33 
Id44 
=44 
table44 
.44 
Column44 %
<44% &
int44& )
>44) *
(44* +
nullable44+ 3
:443 4
false445 :
)44: ;
.55 

Annotation55 #
(55# $
$str55$ 8
,558 9
$str55: @
)55@ A
,55A B
Provider66 
=66 
table66 $
.66$ %
Column66% +
<66+ ,
int66, /
>66/ 0
(660 1
nullable661 9
:669 :
false66; @
)66@ A
,66A B
ExternalUserId77 "
=77# $
table77% *
.77* +
Column77+ 1
<771 2
string772 8
>778 9
(779 :
	maxLength77: C
:77C D
$num77E G
,77G H
nullable77I Q
:77Q R
false77S X
)77X Y
,77Y Z
Code88 
=88 
table88  
.88  !
Column88! '
<88' (
int88( +
>88+ ,
(88, -
	maxLength88- 6
:886 7
$num888 :
,88: ;
nullable88< D
:88D E
false88F K
)88K L
,88L M
SendDate99 
=99 
table99 $
.99$ %
Column99% +
<99+ ,
DateTime99, 4
>994 5
(995 6
nullable996 >
:99> ?
false99@ E
)99E F
,99F G
IsSend:: 
=:: 
table:: "
.::" #
Column::# )
<::) *
bool::* .
>::. /
(::/ 0
nullable::0 8
:::8 9
false::: ?
)::? @
,::@ A
IsUsed;; 
=;; 
table;; "
.;;" #
Column;;# )
<;;) *
bool;;* .
>;;. /
(;;/ 0
nullable;;0 8
:;;8 9
false;;: ?
);;? @
}<< 
,<< 
constraints== 
:== 
table== "
=>==# %
{>> 
table?? 
.?? 

PrimaryKey?? $
(??$ %
$str??% 5
,??5 6
x??7 8
=>??9 ;
x??< =
.??= >
Id??> @
)??@ A
;??A B
}@@ 
)@@ 
;@@ 
migrationBuilderBB 
.BB 
CreateTableBB (
(BB( )
nameCC 
:CC 
$strCC 
,CC 
columnsDD 
:DD 
tableDD 
=>DD !
newDD" %
{EE 
UserIdFF 
=FF 
tableFF "
.FF" #
ColumnFF# )
<FF) *
intFF* -
>FF- .
(FF. /
nullableFF/ 7
:FF7 8
falseFF9 >
)FF> ?
.GG 

AnnotationGG #
(GG# $
$strGG$ 8
,GG8 9
$strGG: @
)GG@ A
,GGA B
	CitizenIdHH 
=HH 
tableHH  %
.HH% &
ColumnHH& ,
<HH, -
longHH- 1
>HH1 2
(HH2 3
nullableHH3 ;
:HH; <
falseHH= B
)HHB C
,HHC D
FullNameII 
=II 
tableII $
.II$ %
ColumnII% +
<II+ ,
stringII, 2
>II2 3
(II3 4
	maxLengthII4 =
:II= >
$numII? B
,IIB C
nullableIID L
:IIL M
falseIIN S
)IIS T
,IIT U
EmailJJ 
=JJ 
tableJJ !
.JJ! "
ColumnJJ" (
<JJ( )
stringJJ) /
>JJ/ 0
(JJ0 1
	maxLengthJJ1 :
:JJ: ;
$numJJ< >
,JJ> ?
nullableJJ@ H
:JJH I
trueJJJ N
)JJN O
,JJO P
MobilePhonesKK  
=KK! "
tableKK# (
.KK( )
ColumnKK) /
<KK/ 0
stringKK0 6
>KK6 7
(KK7 8
	maxLengthKK8 A
:KKA B
$numKKC E
,KKE F
nullableKKG O
:KKO P
trueKKQ U
)KKU V
,KKV W
StatusLL 
=LL 
tableLL "
.LL" #
ColumnLL# )
<LL) *
boolLL* .
>LL. /
(LL/ 0
nullableLL0 8
:LL8 9
falseLL: ?
)LL? @
,LL@ A
	BirthDateMM 
=MM 
tableMM  %
.MM% &
ColumnMM& ,
<MM, -
DateTimeMM- 5
>MM5 6
(MM6 7
nullableMM7 ?
:MM? @
falseMMA F
)MMF G
,MMG H
GenderNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
intNN* -
>NN- .
(NN. /
nullableNN/ 7
:NN7 8
falseNN9 >
)NN> ?
,NN? @

RecordDateOO 
=OO  
tableOO! &
.OO& '
ColumnOO' -
<OO- .
DateTimeOO. 6
>OO6 7
(OO7 8
nullableOO8 @
:OO@ A
falseOOB G
)OOG H
,OOH I
AddressPP 
=PP 
tablePP #
.PP# $
ColumnPP$ *
<PP* +
stringPP+ 1
>PP1 2
(PP2 3
	maxLengthPP3 <
:PP< =
$numPP> A
,PPA B
nullablePPC K
:PPK L
truePPM Q
)PPQ R
,PPR S
NotesQQ 
=QQ 
tableQQ !
.QQ! "
ColumnQQ" (
<QQ( )
stringQQ) /
>QQ/ 0
(QQ0 1
	maxLengthQQ1 :
:QQ: ;
$numQQ< ?
,QQ? @
nullableQQA I
:QQI J
trueQQK O
)QQO P
,QQP Q
UpdateContactDateRR %
=RR& '
tableRR( -
.RR- .
ColumnRR. 4
<RR4 5
DateTimeRR5 =
>RR= >
(RR> ?
nullableRR? G
:RRG H
falseRRI N
)RRN O
,RRO P
PasswordSaltSS  
=SS! "
tableSS# (
.SS( )
ColumnSS) /
<SS/ 0
byteSS0 4
[SS4 5
]SS5 6
>SS6 7
(SS7 8
nullableSS8 @
:SS@ A
trueSSB F
)SSF G
,SSG H
PasswordHashTT  
=TT! "
tableTT# (
.TT( )
ColumnTT) /
<TT/ 0
byteTT0 4
[TT4 5
]TT5 6
>TT6 7
(TT7 8
nullableTT8 @
:TT@ A
trueTTB F
)TTF G
}UU 
,UU 
constraintsVV 
:VV 
tableVV "
=>VV# %
{WW 
tableXX 
.XX 

PrimaryKeyXX $
(XX$ %
$strXX% .
,XX. /
xXX0 1
=>XX2 4
xXX5 6
.XX6 7
UserIdXX7 =
)XX= >
;XX> ?
}YY 
)YY 
;YY 
migrationBuilder[[ 
.[[ 
CreateTable[[ (
([[( )
name\\ 
:\\ 
$str\\ !
,\\! "
columns]] 
:]] 
table]] 
=>]] !
new]]" %
{^^ 
UserId__ 
=__ 
table__ "
.__" #
Column__# )
<__) *
int__* -
>__- .
(__. /
nullable__/ 7
:__7 8
false__9 >
)__> ?
,__? @
ClaimId`` 
=`` 
table`` #
.``# $
Column``$ *
<``* +
int``+ .
>``. /
(``/ 0
nullable``0 8
:``8 9
false``: ?
)``? @
}aa 
,aa 
constraintsbb 
:bb 
tablebb "
=>bb# %
{cc 
tabledd 
.dd 

PrimaryKeydd $
(dd$ %
$strdd% 3
,dd3 4
xdd5 6
=>dd7 9
newdd: =
{dd> ?
xdd@ A
.ddA B
UserIdddB H
,ddH I
xddJ K
.ddK L
ClaimIdddL S
}ddT U
)ddU V
;ddV W
}ee 
)ee 
;ee 
migrationBuildergg 
.gg 
CreateTablegg (
(gg( )
namehh 
:hh 
$strhh !
,hh! "
columnsii 
:ii 
tableii 
=>ii !
newii" %
{jj 
GroupIdkk 
=kk 
tablekk #
.kk# $
Columnkk$ *
<kk* +
intkk+ .
>kk. /
(kk/ 0
nullablekk0 8
:kk8 9
falsekk: ?
)kk? @
,kk@ A
UserIdll 
=ll 
tablell "
.ll" #
Columnll# )
<ll) *
intll* -
>ll- .
(ll. /
nullablell/ 7
:ll7 8
falsell9 >
)ll> ?
}mm 
,mm 
constraintsnn 
:nn 
tablenn "
=>nn# %
{oo 
tablepp 
.pp 

PrimaryKeypp $
(pp$ %
$strpp% 3
,pp3 4
xpp5 6
=>pp7 9
newpp: =
{pp> ?
xpp@ A
.ppA B
UserIdppB H
,ppH I
xppJ K
.ppK L
GroupIdppL S
}ppT U
)ppU V
;ppV W
}qq 
)qq 
;qq 
migrationBuilderss 
.ss 
CreateIndexss (
(ss( )
namett 
:tt 
$strtt >
,tt> ?
tableuu 
:uu 
$struu $
,uu$ %
columnsvv 
:vv 
newvv 
[vv 
]vv 
{vv  
$strvv! 1
,vv1 2
$strvv3 =
}vv> ?
)vv? @
;vv@ A
migrationBuilderxx 
.xx 
CreateIndexxx (
(xx( )
nameyy 
:yy 
$stryy )
,yy) *
tablezz 
:zz 
$strzz 
,zz 
column{{ 
:{{ 
$str{{ #
){{# $
;{{$ %
migrationBuilder}} 
.}} 
CreateIndex}} (
(}}( )
name~~ 
:~~ 
$str~~ ,
,~~, -
table 
: 
$str 
, 
column
ÄÄ 
:
ÄÄ 
$str
ÄÄ &
)
ÄÄ& '
;
ÄÄ' (
}
ÅÅ 	
	protected
ÉÉ 
override
ÉÉ 
void
ÉÉ 
Down
ÉÉ  $
(
ÉÉ$ %
MigrationBuilder
ÉÉ% 5
migrationBuilder
ÉÉ6 F
)
ÉÉF G
{
ÑÑ 	
migrationBuilder
ÖÖ 
.
ÖÖ 
	DropTable
ÖÖ &
(
ÖÖ& '
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ 
)
ÜÜ  
;
ÜÜ  !
migrationBuilder
àà 
.
àà 
	DropTable
àà &
(
àà& '
name
ââ 
:
ââ 
$str
ââ 
)
ââ 
;
ââ 
migrationBuilder
ãã 
.
ãã 
	DropTable
ãã &
(
ãã& '
name
åå 
:
åå 
$str
åå "
)
åå" #
;
åå# $
migrationBuilder
éé 
.
éé 
	DropTable
éé &
(
éé& '
name
èè 
:
èè 
$str
èè #
)
èè# $
;
èè$ %
migrationBuilder
ëë 
.
ëë 
	DropTable
ëë &
(
ëë& '
name
íí 
:
íí 
$str
íí 
)
íí 
;
íí 
migrationBuilder
îî 
.
îî 
	DropTable
îî &
(
îî& '
name
ïï 
:
ïï 
$str
ïï !
)
ïï! "
;
ïï" #
migrationBuilder
óó 
.
óó 
	DropTable
óó &
(
óó& '
name
òò 
:
òò 
$str
òò !
)
òò! "
;
òò" #
}
ôô 	
}
öö 
}õõ ∞í
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200601120606_InitialCreate.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Pg  "
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
GroupId 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
,@ A
ClaimId 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
new< ?
{@ A
xB C
.C D
GroupIdD K
,K L
xM N
.N O
ClaimIdO V
}W X
)X Y
;Y Z
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
nullable+ 3
:3 4
false5 :
): ;
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
	GroupName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
	maxLength5 >
:> ?
$num@ B
,B C
nullableD L
:L M
falseN S
)S T
} 
, 
constraints 
: 
table "
=># %
{   
table!! 
.!! 

PrimaryKey!! $
(!!$ %
$str!!% 0
,!!0 1
x!!2 3
=>!!4 6
x!!7 8
.!!8 9
Id!!9 ;
)!!; <
;!!< =
}"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
CreateTable$$ (
($$( )
name%% 
:%% 
$str%% 
,%% 
columns&& 
:&& 
table&& 
=>&& !
new&&" %
{'' 
Id(( 
=(( 
table(( 
.(( 
Column(( %
<((% &
int((& )
>(() *
(((* +
nullable((+ 3
:((3 4
false((5 :
)((: ;
.)) 

Annotation)) #
())# $
$str))$ D
,))D E)
NpgsqlValueGenerationStrategy))F c
.))c d#
IdentityByDefaultColumn))d {
))){ |
,))| }
	LogDetail** 
=** 
table**  %
.**% &
Column**& ,
<**, -
string**- 3
>**3 4
(**4 5
nullable**5 =
:**= >
true**? C
)**C D
,**D E
Date++ 
=++ 
table++  
.++  !
Column++! '
<++' (
DateTime++( 0
>++0 1
(++1 2
nullable++2 :
:++: ;
false++< A
)++A B
,++B C
Audit,, 
=,, 
table,, !
.,,! "
Column,," (
<,,( )
string,,) /
>,,/ 0
(,,0 1
nullable,,1 9
:,,9 :
true,,; ?
),,? @
}-- 
,-- 
constraints.. 
:.. 
table.. "
=>..# %
{// 
table00 
.00 

PrimaryKey00 $
(00$ %
$str00% .
,00. /
x000 1
=>002 4
x005 6
.006 7
Id007 9
)009 :
;00: ;
}11 
)11 
;11 
migrationBuilder33 
.33 
CreateTable33 (
(33( )
name44 
:44 
$str44 $
,44$ %
columns55 
:55 
table55 
=>55 !
new55" %
{66 
Id77 
=77 
table77 
.77 
Column77 %
<77% &
int77& )
>77) *
(77* +
nullable77+ 3
:773 4
false775 :
)77: ;
.88 

Annotation88 #
(88# $
$str88$ D
,88D E)
NpgsqlValueGenerationStrategy88F c
.88c d#
IdentityByDefaultColumn88d {
)88{ |
,88| }
Provider99 
=99 
table99 $
.99$ %
Column99% +
<99+ ,
int99, /
>99/ 0
(990 1
nullable991 9
:999 :
false99; @
)99@ A
,99A B
ExternalUserId:: "
=::# $
table::% *
.::* +
Column::+ 1
<::1 2
string::2 8
>::8 9
(::9 :
	maxLength::: C
:::C D
$num::E G
,::G H
nullable::I Q
:::Q R
false::S X
)::X Y
,::Y Z
Code;; 
=;; 
table;;  
.;;  !
Column;;! '
<;;' (
int;;( +
>;;+ ,
(;;, -
	maxLength;;- 6
:;;6 7
$num;;8 :
,;;: ;
nullable;;< D
:;;D E
false;;F K
);;K L
,;;L M
SendDate<< 
=<< 
table<< $
.<<$ %
Column<<% +
<<<+ ,
DateTime<<, 4
><<4 5
(<<5 6
nullable<<6 >
:<<> ?
false<<@ E
)<<E F
,<<F G
IsSend== 
=== 
table== "
.==" #
Column==# )
<==) *
bool==* .
>==. /
(==/ 0
nullable==0 8
:==8 9
false==: ?
)==? @
,==@ A
IsUsed>> 
=>> 
table>> "
.>>" #
Column>># )
<>>) *
bool>>* .
>>>. /
(>>/ 0
nullable>>0 8
:>>8 9
false>>: ?
)>>? @
}?? 
,?? 
constraints@@ 
:@@ 
table@@ "
=>@@# %
{AA 
tableBB 
.BB 

PrimaryKeyBB $
(BB$ %
$strBB% 6
,BB6 7
xBB8 9
=>BB: <
xBB= >
.BB> ?
IdBB? A
)BBA B
;BBB C
}CC 
)CC 
;CC 
migrationBuilderEE 
.EE 
CreateTableEE (
(EE( )
nameFF 
:FF 
$strFF '
,FF' (
columnsGG 
:GG 
tableGG 
=>GG !
newGG" %
{HH 
IdII 
=II 
tableII 
.II 
ColumnII %
<II% &
intII& )
>II) *
(II* +
nullableII+ 3
:II3 4
falseII5 :
)II: ;
.JJ 

AnnotationJJ #
(JJ# $
$strJJ$ D
,JJD E)
NpgsqlValueGenerationStrategyJJF c
.JJc d#
IdentityByDefaultColumnJJd {
)JJ{ |
,JJ| }
NameKK 
=KK 
tableKK  
.KK  !
ColumnKK! '
<KK' (
stringKK( .
>KK. /
(KK/ 0
nullableKK0 8
:KK8 9
trueKK: >
)KK> ?
}LL 
,LL 
constraintsMM 
:MM 
tableMM "
=>MM# %
{NN 
tableOO 
.OO 

PrimaryKeyOO $
(OO$ %
$strOO% 9
,OO9 :
xOO; <
=>OO= ?
xOO@ A
.OOA B
IdOOB D
)OOD E
;OOE F
}PP 
)PP 
;PP 
migrationBuilderRR 
.RR 
CreateTableRR (
(RR( )
nameSS 
:SS 
$strSS "
,SS" #
columnsTT 
:TT 
tableTT 
=>TT !
newTT" %
{UU 
UserIdVV 
=VV 
tableVV "
.VV" #
ColumnVV# )
<VV) *
intVV* -
>VV- .
(VV. /
nullableVV/ 7
:VV7 8
falseVV9 >
)VV> ?
,VV? @
ClaimIdWW 
=WW 
tableWW #
.WW# $
ColumnWW$ *
<WW* +
intWW+ .
>WW. /
(WW/ 0
nullableWW0 8
:WW8 9
falseWW: ?
)WW? @
}XX 
,XX 
constraintsYY 
:YY 
tableYY "
=>YY# %
{ZZ 
table[[ 
.[[ 

PrimaryKey[[ $
([[$ %
$str[[% 4
,[[4 5
x[[6 7
=>[[8 :
new[[; >
{[[? @
x[[A B
.[[B C
UserId[[C I
,[[I J
x[[K L
.[[L M
ClaimId[[M T
}[[U V
)[[V W
;[[W X
}\\ 
)\\ 
;\\ 
migrationBuilder^^ 
.^^ 
CreateTable^^ (
(^^( )
name__ 
:__ 
$str__ "
,__" #
columns`` 
:`` 
table`` 
=>`` !
new``" %
{aa 
GroupIdbb 
=bb 
tablebb #
.bb# $
Columnbb$ *
<bb* +
intbb+ .
>bb. /
(bb/ 0
nullablebb0 8
:bb8 9
falsebb: ?
)bb? @
,bb@ A
UserIdcc 
=cc 
tablecc "
.cc" #
Columncc# )
<cc) *
intcc* -
>cc- .
(cc. /
nullablecc/ 7
:cc7 8
falsecc9 >
)cc> ?
}dd 
,dd 
constraintsee 
:ee 
tableee "
=>ee# %
{ff 
tablegg 
.gg 

PrimaryKeygg $
(gg$ %
$strgg% 4
,gg4 5
xgg6 7
=>gg8 :
newgg; >
{gg? @
xggA B
.ggB C
UserIdggC I
,ggI J
xggK L
.ggL M
GroupIdggM T
}ggU V
)ggV W
;ggW X
}hh 
)hh 
;hh 
migrationBuilderjj 
.jj 
CreateTablejj (
(jj( )
namekk 
:kk 
$strkk 
,kk 
columnsll 
:ll 
tablell 
=>ll !
newll" %
{mm 
UserIdnn 
=nn 
tablenn "
.nn" #
Columnnn# )
<nn) *
intnn* -
>nn- .
(nn. /
nullablenn/ 7
:nn7 8
falsenn9 >
)nn> ?
.oo 

Annotationoo #
(oo# $
$stroo$ D
,ooD E)
NpgsqlValueGenerationStrategyooF c
.ooc d#
IdentityByDefaultColumnood {
)oo{ |
,oo| }
	CitizenIdpp 
=pp 
tablepp  %
.pp% &
Columnpp& ,
<pp, -
longpp- 1
>pp1 2
(pp2 3
nullablepp3 ;
:pp; <
falsepp= B
)ppB C
,ppC D
FullNameqq 
=qq 
tableqq $
.qq$ %
Columnqq% +
<qq+ ,
stringqq, 2
>qq2 3
(qq3 4
	maxLengthqq4 =
:qq= >
$numqq? B
,qqB C
nullableqqD L
:qqL M
falseqqN S
)qqS T
,qqT U
Emailrr 
=rr 
tablerr !
.rr! "
Columnrr" (
<rr( )
stringrr) /
>rr/ 0
(rr0 1
	maxLengthrr1 :
:rr: ;
$numrr< >
,rr> ?
nullablerr@ H
:rrH I
truerrJ N
)rrN O
,rrO P
MobilePhonesss  
=ss! "
tabless# (
.ss( )
Columnss) /
<ss/ 0
stringss0 6
>ss6 7
(ss7 8
	maxLengthss8 A
:ssA B
$numssC E
,ssE F
nullablessG O
:ssO P
truessQ U
)ssU V
,ssV W
Statustt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
booltt* .
>tt. /
(tt/ 0
nullablett0 8
:tt8 9
falsett: ?
)tt? @
,tt@ A
	BirthDateuu 
=uu 
tableuu  %
.uu% &
Columnuu& ,
<uu, -
DateTimeuu- 5
>uu5 6
(uu6 7
nullableuu7 ?
:uu? @
falseuuA F
)uuF G
,uuG H
Gendervv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
intvv* -
>vv- .
(vv. /
nullablevv/ 7
:vv7 8
falsevv9 >
)vv> ?
,vv? @

RecordDateww 
=ww  
tableww! &
.ww& '
Columnww' -
<ww- .
DateTimeww. 6
>ww6 7
(ww7 8
nullableww8 @
:ww@ A
falsewwB G
)wwG H
,wwH I
Addressxx 
=xx 
tablexx #
.xx# $
Columnxx$ *
<xx* +
stringxx+ 1
>xx1 2
(xx2 3
	maxLengthxx3 <
:xx< =
$numxx> A
,xxA B
nullablexxC K
:xxK L
truexxM Q
)xxQ R
,xxR S
Notesyy 
=yy 
tableyy !
.yy! "
Columnyy" (
<yy( )
stringyy) /
>yy/ 0
(yy0 1
	maxLengthyy1 :
:yy: ;
$numyy< ?
,yy? @
nullableyyA I
:yyI J
trueyyK O
)yyO P
,yyP Q
UpdateContactDatezz %
=zz& '
tablezz( -
.zz- .
Columnzz. 4
<zz4 5
DateTimezz5 =
>zz= >
(zz> ?
nullablezz? G
:zzG H
falsezzI N
)zzN O
,zzO P
PasswordSalt{{  
={{! "
table{{# (
.{{( )
Column{{) /
<{{/ 0
byte{{0 4
[{{4 5
]{{5 6
>{{6 7
({{7 8
nullable{{8 @
:{{@ A
true{{B F
){{F G
,{{G H
PasswordHash||  
=||! "
table||# (
.||( )
Column||) /
<||/ 0
byte||0 4
[||4 5
]||5 6
>||6 7
(||7 8
nullable||8 @
:||@ A
true||B F
)||F G
}}} 
,}} 
constraints~~ 
:~~ 
table~~ "
=>~~# %
{ 
table
ÄÄ 
.
ÄÄ 

PrimaryKey
ÄÄ $
(
ÄÄ$ %
$str
ÄÄ% /
,
ÄÄ/ 0
x
ÄÄ1 2
=>
ÄÄ3 5
x
ÄÄ6 7
.
ÄÄ7 8
UserId
ÄÄ8 >
)
ÄÄ> ?
;
ÄÄ? @
}
ÅÅ 
)
ÅÅ 
;
ÅÅ 
migrationBuilder
ÉÉ 
.
ÉÉ 
CreateIndex
ÉÉ (
(
ÉÉ( )
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ ?
,
ÑÑ? @
table
ÖÖ 
:
ÖÖ 
$str
ÖÖ %
,
ÖÖ% &
columns
ÜÜ 
:
ÜÜ 
new
ÜÜ 
[
ÜÜ 
]
ÜÜ 
{
ÜÜ  
$str
ÜÜ! 1
,
ÜÜ1 2
$str
ÜÜ3 =
}
ÜÜ> ?
)
ÜÜ? @
;
ÜÜ@ A
migrationBuilder
àà 
.
àà 
CreateIndex
àà (
(
àà( )
name
ââ 
:
ââ 
$str
ââ *
,
ââ* +
table
ää 
:
ää 
$str
ää 
,
ää 
column
ãã 
:
ãã 
$str
ãã #
)
ãã# $
;
ãã$ %
migrationBuilder
çç 
.
çç 
CreateIndex
çç (
(
çç( )
name
éé 
:
éé 
$str
éé -
,
éé- .
table
èè 
:
èè 
$str
èè 
,
èè 
column
êê 
:
êê 
$str
êê &
)
êê& '
;
êê' (
}
ëë 	
	protected
ìì 
override
ìì 
void
ìì 
Down
ìì  $
(
ìì$ %
MigrationBuilder
ìì% 5
migrationBuilder
ìì6 F
)
ììF G
{
îî 	
migrationBuilder
ïï 
.
ïï 
	DropTable
ïï &
(
ïï& '
name
ññ 
:
ññ 
$str
ññ #
)
ññ# $
;
ññ$ %
migrationBuilder
òò 
.
òò 
	DropTable
òò &
(
òò& '
name
ôô 
:
ôô 
$str
ôô 
)
ôô 
;
ôô  
migrationBuilder
õõ 
.
õõ 
	DropTable
õõ &
(
õõ& '
name
úú 
:
úú 
$str
úú 
)
úú 
;
úú 
migrationBuilder
ûû 
.
ûû 
	DropTable
ûû &
(
ûû& '
name
üü 
:
üü 
$str
üü $
)
üü$ %
;
üü% &
migrationBuilder
°° 
.
°° 
	DropTable
°° &
(
°°& '
name
¢¢ 
:
¢¢ 
$str
¢¢ '
)
¢¢' (
;
¢¢( )
migrationBuilder
§§ 
.
§§ 
	DropTable
§§ &
(
§§& '
name
•• 
:
•• 
$str
•• "
)
••" #
;
••# $
migrationBuilder
ßß 
.
ßß 
	DropTable
ßß &
(
ßß& '
name
®® 
:
®® 
$str
®® "
)
®®" #
;
®®# $
migrationBuilder
™™ 
.
™™ 
	DropTable
™™ &
(
™™& '
name
´´ 
:
´´ 
$str
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
}
≠≠ 
}ÆÆ È
nE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200601121540_AddSampleClassAnimal.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Pg  "
{ 
public 

partial 
class  
AddSampleClassAnimal -
:. /
	Migration0 9
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
,  
columns 
: 
table 
=> !
new" %
{ 
AnimalId 
= 
table $
.$ %
Column% +
<+ ,
int, /
>/ 0
(0 1
nullable1 9
:9 :
false; @
)@ A
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }

AnimalName 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
nullable6 >
:> ?
true@ D
)D E
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 1
,1 2
x3 4
=>5 7
x8 9
.9 :
AnimalId: B
)B C
;C D
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
)  
;  !
} 	
} 
} ÿ
kE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200601123113_AddSampleClassCar.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Pg  "
{ 
public 

partial 
class 
AddSampleClassCar *
:+ ,
	Migration- 6
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
CarId 
= 
table !
.! "
Column" (
<( )
int) ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
CarName 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
nullable0 8
:8 9
false: ?
)? @
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% .
,. /
x0 1
=>2 4
x5 6
.6 7
CarId7 <
)< =
;= >
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
) 
; 
} 	
} 
} Ü 
iE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200627154545_addProductClass.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Pg  "
{ 
public 

partial 
class 
addProductClass (
:) *
	Migration+ 4
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
	DropTable

 &
(

& '
name 
: 
$str 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
	ProductId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
nullable2 :
:: ;
false< A
)A B
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }

CategoryId 
=  
table! &
.& '
Column' -
<- .
int. 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
,C D
ProductName 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
nullable7 ?
:? @
trueA E
)E F
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
	ProductId; D
)D E
;E F
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str  
)  !
;! "
migrationBuilder!! 
.!! 
CreateTable!! (
(!!( )
name"" 
:"" 
$str"" 
,"" 
columns## 
:## 
table## 
=>## !
new##" %
{$$ 
CarId%% 
=%% 
table%% !
.%%! "
Column%%" (
<%%( )
int%%) ,
>%%, -
(%%- .
type%%. 2
:%%2 3
$str%%4 =
,%%= >
nullable%%? G
:%%G H
false%%I N
)%%N O
.&& 

Annotation&& #
(&&# $
$str&&$ D
,&&D E)
NpgsqlValueGenerationStrategy&&F c
.&&c d#
IdentityByDefaultColumn&&d {
)&&{ |
,&&| }
CarName'' 
='' 
table'' #
.''# $
Column''$ *
<''* +
int''+ .
>''. /
(''/ 0
type''0 4
:''4 5
$str''6 ?
,''? @
nullable''A I
:''I J
false''K P
)''P Q
}(( 
,(( 
constraints)) 
:)) 
table)) "
=>))# %
{** 
table++ 
.++ 

PrimaryKey++ $
(++$ %
$str++% .
,++. /
x++0 1
=>++2 4
x++5 6
.++6 7
CarId++7 <
)++< =
;++= >
},, 
),, 
;,, 
}-- 	
}.. 
}// 