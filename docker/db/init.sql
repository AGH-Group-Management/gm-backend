-- tables
-- Table: ChangeRequest
CREATE TABLE ChangeRequest (
                               ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                               Requests_ID int  NOT NULL,
                               Subject1ID int  NOT NULL,
                               SUbject2ID int  NOT NULL,
                               Description varchar(150)  NOT NULL,
                               CONSTRAINT ChangeRequest_pk PRIMARY KEY (ID)
);

-- Table: Dziekans
CREATE TABLE Dziekans (
                          ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                          DziekanID int  NOT NULL,
                          CONSTRAINT Dziekans_pk PRIMARY KEY (ID)
);

-- Table: OtherRequests
CREATE TABLE OtherRequests (
                               ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                               Requests_ID int  NOT NULL,
                               Description varchar(150)  NOT NULL,
                               CONSTRAINT OtherRequests_pk PRIMARY KEY (ID)
);

-- Table: Requests
CREATE TABLE Requests (
                          ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                          Users_ID int  NOT NULL,
                          Description varchar(150)  NOT NULL,
                          CreatedOn date  NOT NULL,
                          ModifiedOn date  NOT NULL,
                          Progress varchar(50)  NOT NULL,
                          CONSTRAINT Requests_pk PRIMARY KEY (ID)
);

-- Table: Roles
CREATE TABLE Roles (
                       ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                       Description varchar(50)  NOT NULL,
                       CONSTRAINT Roles_pk PRIMARY KEY (ID)
);

-- Table: Students
CREATE TABLE Students (
                          ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                          StudentID int  NOT NULL,
                          Semester int  NOT NULL,
                          Index varchar(6)  NOT NULL,
                          CONSTRAINT Students_pk PRIMARY KEY (ID)
);

-- Table: StudentsToSubjects
CREATE TABLE StudentsToSubjects (
                                    StudentsID int  NOT NULL,
                                    Subjects_ID int  NOT NULL
);

-- Table: Subjects
CREATE TABLE Subjects (
                          ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                          Name varchar(50)  NOT NULL,
                          Description varchar(150)  NOT NULL,
                          StartDate date  NOT NULL,
                          EndDate date  NOT NULL,
                          IsRequired boolean  NOT NULL,
                          MaxSlots int  NULL,
                          CONSTRAINT Subjects_pk PRIMARY KEY (ID)
);

-- Table: Users
CREATE TABLE Users (
                       ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                       Name varchar(50)  NOT NULL,
                       Surname varchar(50)  NOT NULL,
                       Email varchar(50)  NOT NULL,
                       RoleId int  NOT NULL,
                       CONSTRAINT Users_pk PRIMARY KEY (ID)
);

-- Table: VacationRequest
CREATE TABLE VacationRequest (
                                 ID int  NOT NULL GENERATED BY DEFAULT AS IDENTITY,
                                 Requests_ID int  NOT NULL,
                                 Description varchar(150)  NOT NULL,
                                 StartDate date  NOT NULL,
                                 EndDate date  NOT NULL,
                                 CONSTRAINT VacationRequest_pk PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: ChangeRequest_Requests (table: ChangeRequest)
ALTER TABLE ChangeRequest ADD CONSTRAINT ChangeRequest_Requests
    FOREIGN KEY (Requests_ID)
        REFERENCES Requests (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: Dziekans_Users (table: Dziekans)
ALTER TABLE Dziekans ADD CONSTRAINT Dziekans_Users
    FOREIGN KEY (DziekanID)
        REFERENCES Users (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: OtherRequests_Requests (table: OtherRequests)
ALTER TABLE OtherRequests ADD CONSTRAINT OtherRequests_Requests
    FOREIGN KEY (Requests_ID)
        REFERENCES Requests (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: Requests_Users (table: Requests)
ALTER TABLE Requests ADD CONSTRAINT Requests_Users
    FOREIGN KEY (Users_ID)
        REFERENCES Users (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: StudentsToSubjects_Students (table: StudentsToSubjects)
ALTER TABLE StudentsToSubjects ADD CONSTRAINT StudentsToSubjects_Students
    FOREIGN KEY (StudentsID)
        REFERENCES Students (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: StudentsToSubjects_Subjects (table: StudentsToSubjects)
ALTER TABLE StudentsToSubjects ADD CONSTRAINT StudentsToSubjects_Subjects
    FOREIGN KEY (Subjects_ID)
        REFERENCES Subjects (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: Students_Users (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Users
    FOREIGN KEY (StudentID)
        REFERENCES Users (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: Users_Roles (table: Users)
ALTER TABLE Users ADD CONSTRAINT Users_Roles
    FOREIGN KEY (RoleId)
        REFERENCES Roles (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: VacationRequest_Requests (table: VacationRequest)
ALTER TABLE VacationRequest ADD CONSTRAINT VacationRequest_Requests
    FOREIGN KEY (Requests_ID)
        REFERENCES Requests (ID)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- End of file.
