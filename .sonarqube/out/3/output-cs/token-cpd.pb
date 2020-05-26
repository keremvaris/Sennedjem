í
TE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IGroupClaimDal.cs
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
}		 É
OE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IGroupDal.cs
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
}		 ï
UE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IMobileLoginDal.cs
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
} û
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IOperationClaimDal.cs
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
}		 è
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserClaimDal.cs
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
}		 µ
NE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserDal.cs
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
} è
SE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Abstract\IUserGroupDal.cs
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
}		 Ò
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
} ù
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
} §)
oE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Concrete\EntityFramework\Contexts\ProjectDbContext.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
.- .
Contexts. 6
{ 
public 
class 
ProjectDbContext 
:  
	DbContext! *
{ 
	protected 
readonly 
IConfiguration #
configuration$ 1
;1 2
public 
ProjectDbContext	 
( 
DbContextOptions *
<* +
ProjectDbContext+ ;
>; <
options= D
,D E
IConfigurationF T
configurationU b
)b c
: 
base 

(
 
options 
) 
{ 
this 
. 
configuration 
= 
configuration %
;% &
} 
	protected$$ 
ProjectDbContext$$ 
($$ 
DbContextOptions$$ -
options$$. 5
,$$5 6
IConfiguration$$7 E
configuration$$F S
)$$S T
:%% 
base%% 

(%%
 
options%% 
)%% 
{&& 
this'' 
.'' 
configuration'' 
='' 
configuration'' %
;''% &
}(( 
	protected++ 
override++ 
void++ 
OnModelCreating++ )
(++) *
ModelBuilder++* 6
modelBuilder++7 C
)++C D
{,, 
modelBuilder-- 
.-- 
ApplyConfiguration-- "
(--" #
new--# &#
UserEntityConfiguration--' >
(--> ?
)--? @
)--@ A
;--A B
modelBuilder.. 
... 
ApplyConfiguration.. "
(.." #
new..# &$
GroupEntityConfiguration..' ?
(..? @
)..@ A
)..A B
;..B C
modelBuilder// 
.// 
ApplyConfiguration// "
(//" #
new//# &(
UserGroupEntityConfiguration//' C
(//C D
)//D E
)//E F
;//F G
modelBuilder00 
.00 
ApplyConfiguration00 "
(00" #
new00# &(
UserClaimEntityConfiguration00' C
(00C D
)00D E
)00E F
;00F G
modelBuilder11 
.11 
ApplyConfiguration11 "
(11" #
new11# &)
GroupClaimEntityConfiguration11' D
(11D E
)11E F
)11F G
;11G H
modelBuilder22 
.22 
ApplyConfiguration22 "
(22" #
new22# &(
UserGroupEntityConfiguration22' C
(22C D
)22D E
)22E F
;22F G
}33 
	protected44 
override44 
void44 
OnConfiguring44 '
(44' (#
DbContextOptionsBuilder44( ?
optionsBuilder44@ N
)44N O
{55 
if66 
(66 
!66 
optionsBuilder66 
.66 
IsConfigured66 #
)66# $
{77 
base88 
.88 	
OnConfiguring88	 
(88 
optionsBuilder88 %
.88% &
	UseNpgsql88& /
(88/ 0
configuration880 =
.88= >
GetConnectionString88> Q
(88Q R
$str88R `
)88` a
)88a b
)88b c
;88c d
}99 
}:: 
public<< 
DbSet<<	 
<<< 
OperationClaim<< 
><< 
OperationClaims<< .
{<</ 0
get<<1 4
;<<4 5
set<<6 9
;<<9 :
}<<; <
public== 
DbSet==	 
<== 
	UserClaim== 
>== 

UserClaims== $
{==% &
get==' *
;==* +
set==, /
;==/ 0
}==1 2
public>> 
DbSet>>	 
<>> 
Group>> 
>>> 
Groups>> 
{>> 
get>> "
;>>" #
set>>$ '
;>>' (
}>>) *
public?? 
DbSet??	 
<?? 
	UserGroup?? 
>?? 

UserGroups?? $
{??% &
get??' *
;??* +
set??, /
;??/ 0
}??1 2
public@@ 
DbSet@@	 
<@@ 
User@@ 
>@@ 
Users@@ 
{@@ 
get@@  
;@@  !
set@@" %
;@@% &
}@@' (
publicAA 
DbSetAA	 
<AA 

GroupClaimAA 
>AA 
GroupClaimsAA &
{AA' (
getAA) ,
;AA, -
setAA. 1
;AA1 2
}AA3 4
publicBB 
DbSetBB	 
<BB 
LogBB 
>BB 
LogsBB 
{BB 
getBB 
;BB 
setBB  #
;BB# $
}BB% &
publicCC 
DbSetCC	 
<CC 
MobileLoginCC 
>CC 
MobileLoginsCC (
{CC) *
getCC+ .
;CC. /
setCC0 3
;CC3 4
}CC5 6
}EE 
}FF ¨
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
} ß
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
})) ∂
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
} í
XE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Entities\Dtos\SelectionItem.cs
	namespace 	
Entities
 
. 
Dtos 
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
} ìâ
gE:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200525161308_InitialCreate.cs
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
(::9 :
nullable::: B
:::B C
true::D H
)::H I
,::I J
Code;; 
=;; 
table;;  
.;;  !
Column;;! '
<;;' (
int;;( +
>;;+ ,
(;;, -
nullable;;- 5
:;;5 6
false;;7 <
);;< =
,;;= >
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
}{{ 
,{{ 
constraints|| 
:|| 
table|| "
=>||# %
{}} 
table~~ 
.~~ 

PrimaryKey~~ $
(~~$ %
$str~~% /
,~~/ 0
x~~1 2
=>~~3 5
x~~6 7
.~~7 8
UserId~~8 >
)~~> ?
;~~? @
} 
) 
; 
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateIndex
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ *
,
ÇÇ* +
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ 
,
ÉÉ 
column
ÑÑ 
:
ÑÑ 
$str
ÑÑ #
)
ÑÑ# $
;
ÑÑ$ %
migrationBuilder
ÜÜ 
.
ÜÜ 
CreateIndex
ÜÜ (
(
ÜÜ( )
name
áá 
:
áá 
$str
áá -
,
áá- .
table
àà 
:
àà 
$str
àà 
,
àà 
column
ââ 
:
ââ 
$str
ââ &
)
ââ& '
;
ââ' (
}
ää 	
	protected
åå 
override
åå 
void
åå 
Down
åå  $
(
åå$ %
MigrationBuilder
åå% 5
migrationBuilder
åå6 F
)
ååF G
{
çç 	
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
íí 
)
íí 
;
íí  
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
ïï 
)
ïï 
;
ïï 
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
òò $
)
òò$ %
;
òò% &
migrationBuilder
öö 
.
öö 
	DropTable
öö &
(
öö& '
name
õõ 
:
õõ 
$str
õõ '
)
õõ' (
;
õõ( )
migrationBuilder
ùù 
.
ùù 
	DropTable
ùù &
(
ùù& '
name
ûû 
:
ûû 
$str
ûû "
)
ûû" #
;
ûû# $
migrationBuilder
†† 
.
†† 
	DropTable
†† &
(
††& '
name
°° 
:
°° 
$str
°° "
)
°°" #
;
°°# $
migrationBuilder
££ 
.
££ 
	DropTable
££ &
(
££& '
name
§§ 
:
§§ 
$str
§§ 
)
§§ 
;
§§ 
}
•• 	
}
¶¶ 
}ßß ◊
_E:\src\NewGenSource\NorthwindBackend\Sennedjem\DataAccess\Migrations\Pg\20200525163436_Login.cs
	namespace 	

DataAccess
 
. 

Migrations 
.  
Pg  "
{ 
public 

partial 
class 
Login 
:  
	Migration! *
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
	AddColumn		 &
<		& '
byte		' +
[		+ ,
]		, -
>		- .
(		. /
name

 
:

 
$str

 $
,

$ %
table 
: 
$str 
, 
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
byte' +
[+ ,
], -
>- .
(. /
name 
: 
$str $
,$ %
table 
: 
$str 
, 
nullable 
: 
true 
) 
;  
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str $
,$ %
table 
: 
$str 
) 
;  
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str $
,$ %
table 
: 
$str 
) 
;  
} 	
} 
} 