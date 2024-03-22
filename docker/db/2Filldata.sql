--- ROLES
INSERT INTO roles (description) VALUES ('Student'), ('Dziekan'), ('Starosta');

--- USERS

INSERT into users (name, surname, email, roleid) VALUES ('Marek', 'Gajęcki', 'mag@agh.edu.pl', 2),
                                                        ('Jan', 'Nowak', 'jnowak@student.agh.edu.pl', 1),
                                                        ('Marcin', 'Kowalski', 'mkowalski@student.agh.edu.pl', 1),
                                                        ('Agnieszka', 'Wojciechowska', 'awojciechowska@student.agh.edu.pl', 3),
                                                        ('Łukasz', 'Nowicki', 'lnowicki@student.agh.edu.pl', 1),
                                                        ('Mateusz', 'Kamiński', 'mkaminski@student.agh.edu.pl', 1),
                                                        ('Marencjusz', 'Garkowski', 'wizard@agh.edu.pl',2),
                                                        ('Marta', 'Jankowska', 'mjankowska@student.agh.edu.pl', 3),
                                                        ('Katarzyna', 'Szymańska', 'kszymanska@student.agh.edu.pl', 1),
                                                        ('Kamil', 'Wróbel', 'kwrobel@student.agh.edu.pl', 1),
                                                        ('Natalia', 'Zielińska', 'nzielinska@student.agh.edu.pl', 1),
                                                        ('Karolina', 'Lewandowska', 'klewandowska@student.agh.edu.pl', 3),
                                                        ('Michał', 'Kowalczyk', 'mkowalczyk@student.agh.edu.pl', 1),
                                                        ('Patryk', 'Kaczmarek', 'pkaczmarek@student.agh.edu.pl', 1),
                                                        ('Natalia', 'Piotrowska', 'npiotrowska@student.agh.edu.pl', 1),
                                                        ('Aleksander', 'Zając', 'azajac@student.agh.edu.pl', 1),
                                                        ('Weronika', 'Grabowska', 'wgrabowska@student.agh.edu.pl', 1),
                                                        ('Kacper', 'Michalski', 'kmichalski@student.agh.edu.pl', 1),
                                                        ('Dominika', 'Nowakowska', 'dnowakowska@student.agh.edu.pl', 2),
                                                        ('Konrad', 'Jabłoński', 'kjablonski@student.agh.edu.pl', 1),
                                                        ('Martyna', 'Sikora', 'msikora@student.agh.edu.pl', 1),
                                                        ('Mikołaj', 'Olszewski', 'molszewski@student.agh.edu.pl', 1),
                                                        ('Nikola', 'Kaczmarczyk', 'nkaczmarczyk@student.agh.edu.pl', 1);

--- DZIEKANS
INSERT INTO dziekans (dziekanid) values (1), (7);


--- PATHS
insert into paths (name) values ('Wytwarzania Oprogramowania'), ('Algorytmiczna'), ('Algorytmiczno - aplikacyjna');

--- STUDENTS
INSERT INTO  students (studentid, semester, pathid, index) values (2, 4, 1, '410800'),(16,4, 2, '410813'),
                                                          (3, 2, 1, '410801'),(17,6, 3, '320816'),
                                                          (4, 4, 2, '410809'),(18,2, 3, '310819'),
                                                          (5, 8, 3, '310818'),(19,8, 2, '310819'),
                                                          (6, 6, 3, '398213'),(20,2, 1, '452312'),
                                                          (8, 6, 2, '387213'),(21,4, 2, '432143'),
                                                          (9, 10, 3, '298712'),(22,4,3, '423145'),
                                                          (10, 2, 2, '463412'),(23,4,1, '419750'),
                                                          (11, 4, 1, '420841'),
                                                          (12, 6, 1, '407271'),
                                                          (13, 8, 2, '321358'),
                                                          (14, 2, 3, '431267'),
                                                          (15, 2, 1, '459281');


--- SUBJECTS

INSERT INTO subjects (name, description, semester, isrequired, maxslots) VALUES
                                                                                       ('Logika matematyczna', 'Aby Studenci rozumieli podstawy logiki i celowość jej stosowania - na choćby elementarnym poziomie..',2, true, null),
                                                                                       ('Algorytmy i struktury danych', 'Przedmiot zapoznaje studentów z podstawowymi algorytmami, strukturami danych, oraz metodami tworzenia i analizy algorytmów.',2, true, null),
                                                                                       ('Fizyka 1', 'Zapoznanie studentów z najbardziej fundamentalnymi prawami opisującymi budowę i właściwości materii oraz oddziaływaniami obserwowanymi w przyrodzie.',2, true, null),
                                                                                       ('Technika cyfrowa', 'Moduł omawia budowę i działanie podstawowych układów cyfrowych.',4, true, null),
                                                                                       ('Systemy operacyjne', 'Zapoznanie studentów z zasadami funkcjonowania systemów operacyjnych oraz metodami ich budowy.',4, true, null),
                                                                                       ('Metody obliczeniowe w nauce i technice', 'Celem modułu jest zapoznanie studenta z podstawowymi algorytmami numerycznymi.',4, true, null),
                                                                                       ('Architektura komputerów', 'W trakcie zajęć studenci poznają podstawowe zagadnienia budowy komputerów o wielu procesorach oraz problemy związane z ich wykorzystaniem.',6, true, null),
                                                                                       ('Inżynieria oprogramowania', '	Celem zajęć jest przekazanie studentowi wiedzy o współczesnych metodykach i technikach stosowanych w zespołach programistycznych.',6, true, null),
                                                                                       ('Systemy rozproszone', 'Moduł wprowadza studenta w podstawy systemów rozproszonych.',6, true, null),
                                                                                       ('Bezpieczeństwo sieci komputerowych', 'Przekazanie wiedzy o technikach monitorowania stanu urządzeń sieciowych i ich zabezpieczania.',6, false, 112),
                                                                                       ('Systemy czasu rzeczywistego', 'Celem kształcenia jest przekazanie wiedzy dotyczącej i analizy.',6, false, 112),
                                                                                       ('Programowanie w języku Icon', 'Celem przedmiotu jest zapoznanie studentów z programowaniem w języku Icon.',4, false, 112),
                                                                                       ('Programowanie w języku Scala', 'Wprowadzenie do Scali obejmujące elementy programowania obiektowego, generycznego i funkcyjnego.',4, true, 112),
                                                                                       ('Elementy statystycznego uczenia maszynowego', 'Niniejszy kurs stanowi wprowadzenie do metod i algorytmów statystycznego uczenia maszynowego',4, true, null),
                                                                                       ('Wprowadzenie do inżynierii bezpieczeństwa', 'Moduł prezentuje przekrojową i aktualną wiedzę z dziedziny inżynierii bezpieczeństwa.',6, true, null),
                                                                                       ('Podstawy uczenia maszynowego', 'Celem jest zapoznanie studentów z głównymi algorytmami uczenia maszynowego i inżynierii cech.',6, false, 112),
                                                                                       ('Eksploracja danych', 'Eksploracja danych jako proces.',8, false, null),
                                                                                       ('Środowiska udostępniania usług', 'Tematyka modułu dotyczy budowy usług eksploatowanych w systemach chmurowych.',8, false, null),
                                                                                       ('Programowanie animacji', 'Celem jest zapoznanie studentów z animacją komputerową',8, false, null),
                                                                                       ('Uczenie paszyn', 'Celem zajęć jest przekazanie wiedzy studentom w obszarze uczenia paszyn.',8, false, 112),
                                                                                       ('Kompetencje w zmieniającym się społeczeństwie', 'Kompetencje w zmieniającym się społeczeństwie to przedmiot!',10, false, null),
                                                                                       ('Problemy prawne systemów AI', 'Celem kursu jest wprowadzenie studentów do problematyki prawnych aspektów wiążących się z projektowaniem.',10, false, null),
                                                                                       ('Informatyka medyczna', 'Przedmiot zapoznaje z zagadnieniami z dziedziny informatyki medycznej.',10, false, null),
                                                                                       ('Ochrona własności intelektualnej', 'Celem modułu jest przedstawienie, co to jest własność intelektualna.',2, true, null);


--- STUDENTS TO SUBJECTS
insert into studentstosubjects (studentsid, subjects_id) VALUES (1, 4), (1, 5),(1, 6),(1, 12),(3, 1),(3, 2),(3, 3),(6, 1),(6, 2),(6, 3),(10, 1),(10, 2),(10, 3),(15, 1),(15, 2),(15, 3),(20, 1),(20, 2),(20, 3),(21, 1),(21, 2),(21, 3),
                                                                (5, 4), (5, 5),(5, 6),(5, 13),(2, 4), (2, 5),(2, 6),(2, 13),(12, 4), (12, 5),(12, 6),(12, 12),(14, 4), (14, 5),(14, 6),(14, 13),(16, 4), (16, 5),(16, 6),(16, 12),(17, 4), (17, 5),(17, 6),(17, 12),
                                                                (6, 7), (6, 8),(6, 9),(6,10),(8, 7), (8, 8),(8, 9),(8,11),(12, 7), (12, 8),(12, 9),(12,11),(17, 7), (17, 8),(17, 9),(17,10),(12,15),
                                                                (7,17), (7,18), (7,19), (19,17), (19,18), (19,19),(8,17), (8,18), (8,19),(8,20),
                                                                (13, 21), (13, 22), (13, 23);



--- REQUESTS

insert into requests (users_id, description, createdon, modifiedon, progress) VALUES (2, 'Zamiana przedmiotu', '2024-02-02', '2024-03-13', 'Troche sobie poczeka'), (4, 'Zamiana przedmiotu', '2024-02-24', '2024-03-20', 'Troche sobie poczeka'),
                                                                                     (3, 'Błąd', '2024-02-01', '2024-03-02', 'Troche sobie poczeka'),(6, 'Błąd', '2024-02-17', '2024-03-07', 'Troche sobie poczeka'),
                                                                                     (11, 'Urlop', '2024-02-05', '2024-03-15', 'Troche sobie poczeka'),(8, 'Zamiana przedmiotu', '2024-02-15', '2024-03-12', 'Troche sobie poczeka'),
                                                                                     (14, 'Urlop', '2024-02-06', '2024-03-08', 'Troche sobie poczeka'),(12, 'Urlop', '2024-02-22', '2024-03-15', 'Troche sobie poczeka'),
                                                                                     (17, 'Zamiana przedmiotu', '2024-02-12', '2024-03-01', 'Troche sobie poczeka');

--- VACATION REQUESTS

insert into vacationrequest (requests_id, startdate, enddate) VALUES (5,'2023-10-01', '2024-09-30'),(7, '2023-10-01', '2024-09-30'),(8, '2024-10-01', '2025-09-30');



--- CHANGE REQUEST
insert into changerequest (requests_id, subject1id, subject2id) values (1, 12, 13), (2, 13, 12), (6, 10, 16), (9, 16, 10);


--- OTHER REQUEST
insert into otherrequests (requests_id)  values (3),(4);