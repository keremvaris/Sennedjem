
// PostgreSQL
Add-Migration InitialCreate -Context ProjectDbContext -OutputDir Migrations/Pg
Update-Database -context ProjectDbContext

// Ms Sql Server
Add-Migration InitialCreate -context MsDbContext -OutputDir Migrations/Ms
Update-Database -context MsDbContext