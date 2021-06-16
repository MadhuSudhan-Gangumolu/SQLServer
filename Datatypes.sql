--numeric data types
Declare @a TinyInt = 255
select @a

--floating type
Declare @decimal numeric(5,2) = 255.234
select @decimal

--date and time
Declare @date date = '2021-06-16 11:05:30.537'
select @date

declare @name varchar(25) =Current_timestamp
select @name