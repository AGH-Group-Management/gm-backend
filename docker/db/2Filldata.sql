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

--- STUDENTS
INSERT INTO  students (studentid, semester, index) values (2, 4, '410800'),(16,4, '410813'),
                                                          (3, 2, '410801'),(17,6, '320816'),
                                                          (4, 4, '410809'),(18,2, '310819'),
                                                          (5, 8, '310818'),(19,8, '310819'),
                                                          (6, 6, '398213'),(20,2, '452312'),
                                                          (8, 6, '387213'),(21,4, '432143'),
                                                          (9, 10, '298712'),(22,4, '423145'),
                                                          (10, 2, '463412'),(23,4, '419750'),
                                                          (11, 4, '420841'),
                                                          (12, 6, '407271'),
                                                          (13, 8, '321358'),
                                                          (14, 2, '431267'),
                                                          (15, 2, '459281');


--- SUBJECTS

INSERT INTO subjects (name, description, startdate, enddate, isrequired, maxslots) VALUES
                                                                                       ('Logika matematyczna', 'Aby Studenci rozumieli podstawy logiki i celowość jej stosowania - na choćby elementarnym poziomie..','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Algorytmy i struktury danych', 'Przedmiot zapoznaje studentów z podstawowymi algorytmami, strukturami danych, oraz metodami tworzenia i analizy algorytmów.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Fizyka 1', 'Zapoznanie studentów z najbardziej fundamentalnymi prawami opisującymi budowę i właściwości materii oraz oddziaływaniami obserwowanymi w przyrodzie.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Technika cyfrowa', 'Moduł omawia budowę i działanie podstawowych układów cyfrowych.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Systemy operacyjne', 'Zapoznanie studentów z zasadami funkcjonowania systemów operacyjnych oraz metodami ich budowy.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Metody obliczeniowe w nauce i technice', 'Celem modułu jest zapoznanie studenta z podstawowymi algorytmami numerycznymi.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Architektura komputerów', 'W trakcie zajęć studenci poznają podstawowe zagadnienia budowy komputerów o wielu procesorach oraz problemy związane z ich wykorzystaniem.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Inżynieria oprogramowania', '	Celem zajęć jest przekazanie studentowi wiedzy o współczesnych metodykach i technikach stosowanych w zespołach programistycznych.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Systemy rozproszone', 'Moduł wprowadza studenta w podstawy systemów rozproszonych.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Bezpieczeństwo sieci komputerowych', 'Przekazanie wiedzy o technikach monitorowania stanu urządzeń sieciowych i ich zabezpieczania.','2024-03-01', '2024-06-30', false, 112),
                                                                                       ('Systemy czasu rzeczywistego', 'Celem kształcenia jest przekazanie wiedzy dotyczącej i analizy.','2024-03-01', '2024-06-30', false, 112),
                                                                                       ('Programowanie w języku Icon', 'Celem przedmiotu jest zapoznanie studentów z programowaniem w języku Icon.','2024-03-01', '2024-06-30', false, 112),
                                                                                       ('Programowanie w języku Scala', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna1', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna2', '.','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna3', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna4', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna5', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna6', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna7', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna8', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna9', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna0', '','2024-03-01', '2024-06-30', true, null),
                                                                                       ('Logika matematyczna-', '','2024-03-01', '2024-06-30', true, null);


---
