
declare @query varchar(300)
set @query = 
'Insert Into
	tableC
select
	*
From
	TableA a
	Inner Join TableB b On 
		a.col = b.col'
declare @tableName varchar(100)
set @tableName = 'tableA'

declare @searchableQuery varchar(300)
select @searchableQuery = replace(replace(replace(replace(@query,char(32),''),char(9),''),char(10),''),char(13),'')

-- indicates table is being pulled from
select charindex('from' + @tableName,@searchableQuery)

-- indicates table is being pulled from
select charindex('join' + @tableName,@searchableQuery)