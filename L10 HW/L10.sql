use SozykinMarvel
go
select *from INFORMATION_SCHEMA.TABLES
select *from Nameofheroes
where name like '__lk%'

SELECT align, COUNT(*), SUM (appearances) 
FROM Nameofheroes GROUP BY align

select *from Nameofheroes

select hair, count(*) countofhair from Nameofheroes
where ALIGN = 'Good Characters' and EYE = 'Brown Eyes'
group by hair
having count(*) between 40 and 270