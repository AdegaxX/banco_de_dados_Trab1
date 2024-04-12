/*
> Importar o banco de dados repassado ao longo das aulas em MySQL;
> Qual o nome dos departamentos da empresa?
> Quantos empregados tem o departamento de pesquisa ("research")?
> Incluir um novo departamento denominado "datascience" com Dno = 7;
> Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;
> Aumentar o salário de todos os empregados em 23.5% do valor atual;
> Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE;
*/

source C:\Employee_Database_Script.sql;	-- Importa um banco de dados
use db_book;

desc department;
select * from department;
-- Research - Dno = 5
-- Administration - Dno = 4
-- Headquarters - Dno = 1

select * from employee where Dno = 5;
-- possui 4 empregados

insert into department (Dname, Dnumber) values ('Datascience', 7);
-- Adicionou um novo departamento em 'department' chamado 'Datascience' no departamento 7

select * from employee;
insert into employee values ('Leandro', 'A', 'Adegas', '333445556', '1998-11-26', '41 Itapajé BR', 'M', '30000', '333445556', 7);
insert into employee values ('Messias', 'A', 'Nascimento', '333445557', '2000-01-03', '150 Fortaleza BR', 'M', '45000', '333445556', 7);
-- Adicionou dois novos funcionários: Leandro Adegas e Messias Nascimento, todos dois no departamento de Datascience

update employee set Salary = round(Salary * 1.235, 2);
select * from employee;
-- Aumenta o salário de todos os funcionários em 23,5% e utiliza o round para arredondar essa conta

select * from dept_locations;
update dept_locations set Dlocation = 'Itapajé CE' where Dnumber = 4;
-- Altera o Dlocation do departamento 4 para Itapajé