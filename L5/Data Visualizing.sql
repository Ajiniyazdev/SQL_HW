create database DataVisualize
use DataVisualize

create table iam_projects(db_id int,
id int primary key, 
name varchar(50), 
type text
)

create table iam_project_rules(db_id int primary key, 
id int foreign key references iam_projects(id), 
name varchar(50), 
type text, 
project_id int
)

create table iam_staged_project_rules(db_id int primary key, 
id int foreign key references iam_projects(id), 
name varchar(50), 
type text, 
project_id int
)

create table iam_staged_rule_conditions(db_id int foreign key references iam_staged_project_rules(db_id), 
rule_db_id int, 
value text, 
attribute text, 
operator text
)

--drop table iam_staged_project_rules
--drop table iam_project_rules

create table iam_rules_conditions(db_id int, 
rule_db_id int foreign key references iam_project_rules(db_id), 
value text, 
attribute text, 
operator text
)

create table iam_projects_graveyard(db_id int, 
id text
)

create table iam_role_projects(role_id int, 
project_id int foreign key references iam_projects(id)
)

create table iam_statement_projects(project_id int foreign key references iam_projects(id),
statement_id int
)

create table iam_policies(db_id int,
id int primary key, 
name varchar(50), 
type text
)
--I want to edit my constrains--
/*
alter table iam_policies
drop constraint PRIMARY KEY(id) ;

ALTER TABLE iam_policies
DROP CONSTRAINT PK__iam_polic__3213E83F399F60E8;

ALTER TABLE [dbo].[iam_policies]
DROP CONSTRAINT PK__iam_poli__3213E83F399F60E8;
*/

exec sp_help 'iam_policies'

ALTER TABLE iam_policies
ADD CONSTRAINT PK_iam_policies PRIMARY KEY (db_id);








create table iam_policy_projects(policy_id int foreign key references iam_policies(id), 
project_id int foreign key references iam_projects(id)
)

create table iam_members(db_id int primary key, 
name varchar(50)
)

create table iam_policy_members (member_id int foreign key references iam_members(db_id),
policy_id int foreign key references iam_policies(id)
)
--drop table iam_policies
--begin transaction
--create table iam_policy_members (member_id int foreign key references iam_members(db_id))
--rollback

create table iam_roles( 

create table iam_statements(db_id int, effect text, actions text, recources text)

drop table iam_statements

create table iam_statements(db_id int, 
effect text, 
actions text, 
recources text

)

select *from INFORMATION_SCHEMA.TABLES

--I forgot add some constrains and tables--

create table iam_roles (db_id int primary key,
id int,
name varchar(50),
type text,
actions text
)
select TABLE_NAME from INFORMATION_SCHEMA.tables
where TABLE_NAME = 'iam_statements'
create table iam_statements (db_id int primary key,
id int,
name varchar(50),
type text,
actions text
)
