CREATE DATABASE TECHQUIZ;
SET SQL_SAFE_UPDATES = 0;
USE TECHQUIZ;
CREATE TABLE Evento(id int auto_increment primary key,nome varchar(50),semestre varchar(45) not null);
CREATE TABLE Questoes(id int auto_increment primary key,nome varchar(45),texto TEXT,urlimage varchar(200));
CREATE TABLE Equipe(id int auto_increment,nome varchar(45),evento_id int,login varchar(45),senha varchar(45),primary key(id,evento_id),foreign key(evento_id) references Evento(id));
CREATE TABLE Bloco(id int  auto_increment,nome varchar(45),evento_id int, tempoinicial_questaoatual time,limite_tempo time,ponto_acerto int,ponto_erro int,primary key(id,evento_id),foreign key(evento_id) references Evento(id));
CREATE TABLE Questoes_Has_Blocos(id int  auto_increment ,Questoes_id int,Bloco_id int,Evento_id int,questaoAtual TINYINT,primary key(id,Questoes_id,Bloco_id,Evento_id),foreign key(Questoes_id) references Questoes(id),foreign key(Bloco_id) references Bloco(id),foreign key(Evento_id) references Evento(id));
CREATE TABLE Membros(matricula int primary key,nome varchar(45));
CREATE TABLE QuestaoAberta(Questoes_id int,rubrica TEXT,primary key(Questoes_id),foreign key(Questoes_id) references Questoes(id));
CREATE TABLE QuestaoVF(Questoes_id int,alternativa_correta TEXT,primary key(Questoes_id),foreign key(Questoes_id) references Questoes(id));
CREATE TABLE QuestaoMultipla(Questoes_id int,alternativa_a TEXT,alternativa_b TEXT,alternativa_c TEXT,alternativa_d TEXT,alternativa_correta int,primary key(Questoes_id),foreign key(Questoes_id) references Questoes(id));
CREATE TABLE Vinculo(Membros_matricula int,Equipe_id int,primary key(Membros_matricula,Equipe_id),foreign key(Membros_matricula) references Membros(matricula),foreign key(Equipe_id) references Equipe(id));
CREATE TABLE Questoes_Has_Blocos_has_Equipe(Questoes_id int,Bloco_id int,Evento_id int,Equipe_id int,resposta int,primary key(Questoes_id,Bloco_id,Evento_id,Equipe_id),foreign key(Questoes_id) references Questoes(id),foreign key(Bloco_id) references Bloco(id),foreign key (Evento_id) references Evento(id),foreign key(Equipe_id) references Equipe(id));
CREATE TABLE Gerenciador(id int auto_increment primary key,Login varchar(45) unique,senha varchar(45));

INSERT INTO Evento(nome,semestre) values('I TechQuiz','1º semestre');
INSERT INTO Evento(nome,semestre) values('II TechQuiz','2º semestre');
INSERT INTO Evento(nome,semestre) values('III TechQuiz','3º semestre');
INSERT INTO Evento(nome,semestre) values('IV TechQuiz','4º semestre');
INSERT INTO Evento(nome,semestre) values('V TechQuiz','5º semestre');
UPDATE Evento set nome = 'XX TechQuiz',semestre = '10º semestre' where id =1;
DELETE FROM Evento where semestre = '2º semestre';
SELECT * FROM Evento;


INSERT INTO Questoes(nome,texto,urlimage) values('Questao 01','Lorem Ipsum','questoes_img/questao01.jpg');
INSERT INTO Questoes(nome,texto,urlimage) values('Questao 02','Ym Test','questoes_img/questao02.jpg');
INSERT INTO Questoes(nome,texto,urlimage) values('Questao 03','Lorem Ipsune','questoes_img/questao03.jpg');
INSERT INTO Questoes(nome,texto,urlimage) values('Questao 04','Lorem','questoes_img/questao04.jpg');
UPDATE Questoes set texto ='Ipsum Lorem' where id=1;
DELETE FROM Questoes where urlimage = 'questoes_img/questao01.jpg';
SELECT * FROM Questoes;



INSERT INTO Equipe(nome,login,senha,evento_id) values('Avengers','avengers95','5599647',1);
INSERT INTO Equipe(nome,login,senha,evento_id) values('MouseKings','kingdon','998853',3);
INSERT INTO Equipe(nome,login,senha,evento_id) values('DevsD','root','root',4);
INSERT INTO Equipe(nome,login,senha,evento_id) values('DevSd','toor','toor',5);
UPDATE Equipe set senha = 'teamcap' where id = 1;
DELETE FROM Equipe where login ='root';
SELECT * FROM Equipe;



INSERT INTO Bloco(nome,evento_id,tempoinicial_questaoatual,limite_tempo,ponto_acerto ,ponto_erro) values('Bloco 01',1,5,200,10,-5);
INSERT INTO Bloco(nome,evento_id,tempoinicial_questaoatual,limite_tempo,ponto_acerto ,ponto_erro) values('Bloco 02',1,3,600,30,-15);
INSERT INTO Bloco(nome,evento_id,tempoinicial_questaoatual,limite_tempo,ponto_acerto ,ponto_erro) values('Bloco 03',1,6,800,12,-6);
INSERT INTO Bloco(nome,evento_id,tempoinicial_questaoatual,limite_tempo,ponto_acerto ,ponto_erro) values('Bloco 04',1,2,500,14,-7);
UPDATE Bloco set ponto_acerto='20',ponto_erro='-15' where id=1;
DELETE FROM Bloco where tempoinicial_questaoatual = '5';
SELECT * FROM Bloco;



INSERT INTO Questoes_Has_Blocos(Questoes_id,Bloco_id,Evento_id,questaoAtual) values(2,2,1,5);
INSERT INTO Questoes_Has_Blocos(Questoes_id,Bloco_id,Evento_id,questaoAtual) values(3,3,3,10);
INSERT INTO Questoes_Has_Blocos(Questoes_id,Bloco_id,Evento_id,questaoAtual) values(4,4,4,10);
UPDATE Questoes_Has_Blocos set questaoAtual = 8 where id = 2;
DELETE FROM Questoes_Has_Blocos where questaoAtual = 8;
SELECT * FROM Questoes_Has_Blocos;


INSERT INTO Membros(matricula,nome) values(312182011,'Angelo Miguel');
INSERT INTO Membros(matricula,nome) values(522697,'Salazar Slytherin');
INSERT INTO Membros(matricula,nome) values(995812,'Severo Snape');
INSERT INTO Membros(matricula,nome) values(105647,'Hermione');
UPDATE Membros set nome='Bellatrix Lestrange' where matricula=312182011;
DELETE FROM Membros where nome = 'Salazar Slytherin';
SELECT * FROM Membros;



INSERT INTO QuestaoAberta(Questoes_id ,rubrica) values(2,'XXXXXXXXXEEEEE');
INSERT INTO QuestaoAberta(Questoes_id ,rubrica) values(3,'AAEESDDDSSS');
INSERT INTO QuestaoAberta(Questoes_id ,rubrica) values(4,'ZZZ5588ZEEE');
UPDATE QuestaoAberta set rubrica = 'YYYYYYYFFFF' where Questoes_id= 2;
DELETE FROM QuestaoAberta where rubrica= 'YYYYYYYFFFF';
SELECT * FROM QuestaoAberta;


INSERT INTO QuestaoVF(Questoes_id,alternativa_correta) values(2,'b');
INSERT INTO QuestaoVF(Questoes_id,alternativa_correta) values(3,'c');
INSERT INTO QuestaoVF(Questoes_id,alternativa_correta) values(4,'d');
UPDATE QuestaoVF set alternativa_correta ='a' where Questoes_id = 4;
DELETE FROM QuestaoVF where alternativa_correta='c';
SELECT * FROM QuestaoVF;


INSERT INTO QuestaoMultipla(Questoes_id ,alternativa_a,alternativa_b,alternativa_c,alternativa_d,alternativa_correta) VALUES(2,'Cliente Side','Server Side','All Side','N.R.A',2);
INSERT INTO QuestaoMultipla(Questoes_id ,alternativa_a,alternativa_b,alternativa_c,alternativa_d,alternativa_correta) VALUES(3,'XAMPP','PHP','MySQL','HTML',3);
INSERT INTO QuestaoMultipla(Questoes_id ,alternativa_a,alternativa_b,alternativa_c,alternativa_d,alternativa_correta) VALUES(4,'Jquery','Laravel','BootStrap','N.R.A',1);
UPDATE QuestaoMultipla set alternativa_b = 'MVC' where Questoes_id =3 ;
DELETE FROM  QuestaoMultipla where alternativa_b = 'MVC';
SELECT * FROM QuestaoMultipla;
 
 
INSERT INTO Vinculo(Membros_matricula,Equipe_id) VALUES(312182011,1);
INSERT INTO Vinculo(Membros_matricula,Equipe_id) VALUES(995812,2);
INSERT INTO Vinculo(Membros_matricula,Equipe_id) VALUES(105647,4);
UPDATE Vinculo set Equipe_id = 2 where Membros_matricula = 5511144;
DELETE FROM Vinculo where Equipe_id = 2;
SELECT * FROM Vinculo; 

 
INSERT INTO Questoes_Has_Blocos_has_Equipe(Questoes_id ,Bloco_id ,Evento_id ,Equipe_id ,resposta ) VALUES(2,3,1,2,3);
INSERT INTO Questoes_Has_Blocos_has_Equipe(Questoes_id ,Bloco_id ,Evento_id ,Equipe_id ,resposta ) VALUES(3,4,3,4,4);
UPDATE Questoes_Has_Blocos_has_Equipe set resposta =10 where Questoes_id = 3;
DELETE FROM Questoes_Has_Blocos_has_Equipe where Questoes_id = 1;
SELECT * FROM Questoes_Has_Blocos_has_Equipe;



INSERT INTO Gerenciador(Login,senha) VALUES('Jose Lima','5588996');
INSERT INTO Gerenciador(Login,senha) VALUES('Maria Pereira','225566');
INSERT INTO Gerenciador(Login,senha) VALUES('Les Vann','15566');
INSERT INTO Gerenciador(Login,senha) VALUES('Paulo Xavier','99968');
UPDATE Gerenciador set senha = '123456' where id = 2;
DELETE FROM Gerenciador where id = 2;
SELECT * FROM Gerenciador;