CREATE TABLE IF NOT EXISTS Lecturers
(
    ID          INTEGER      NOT NULL AUTO_INCREMENT,
    LoginID     VARCHAR(255) NOT NULL,
    FirstName   VARCHAR(25)  NOT NULL,
    FirstNameBG VARCHAR(25)  NOT NULL,
    Surname     VARCHAR(25)  NOT NULL,
    SurnameBG   VARCHAR(25)  NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS ContactTypes
(
    ID   INTEGER     NOT NULL AUTO_INCREMENT,
    Type VARCHAR(15) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Contacts
(
    ID         INTEGER     NOT NULL AUTO_INCREMENT,
    CValue     VARCHAR(55) NOT NULL,
    LecturerID INTEGER,
    TypeID     INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturers (ID),
    FOREIGN KEY (TypeID) REFERENCES ContactTypes (ID)
);

CREATE TABLE IF NOT EXISTS Degrees
(
    ID       INTEGER     NOT NULL AUTO_INCREMENT,
    Priority INTEGER     NOT NULL,
    NameBG   VARCHAR(15) NOT NULL,
    NameDE   VARCHAR(15) NOT NULL,
    NameEN   VARCHAR(15) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS LecturersDegrees
(
    LecturerID INTEGER,
    DegreeID   INTEGER,
    FOREIGN KEY (LecturerID) REFERENCES Lecturers (ID),
    FOREIGN KEY (DegreeID) REFERENCES Degrees (ID)
);

CREATE TABLE IF NOT EXISTS Weekdays
(
    ID      INTEGER     NOT NULL AUTO_INCREMENT,
    ValueBG VARCHAR(15) NOT NULL,
    ValueDE VARCHAR(15) NOT NULL,
    ValueEN VARCHAR(15) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS TimeSlots
(
    ID            INTEGER NOT NULL AUTO_INCREMENT,
    TimeSlotStart TIME(0) NOT NULL,
    TimeSlotEnd   TIME(0) NOT NULL,
    WeekdayID     INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (WeekdayID) REFERENCES Weekdays (ID)
);

CREATE TABLE IF NOT EXISTS LecturerIsFree
(
    TimeSlotID INTEGER,
    LecturerID INTEGER,
    FOREIGN KEY (TimeSlotID) REFERENCES TimeSlots (ID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturers (ID)
);

CREATE TABLE IF NOT EXISTS SubjectTypes
(
    ID      INTEGER     NOT NULL AUTO_INCREMENT,
    ValueBG VARCHAR(25) NOT NULL,
    ValueDE VARCHAR(25) NOT NULL,
    ValueEN VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS SemesterTypes
(
    ID       INTEGER     NOT NULL AUTO_INCREMENT,
    SemValue VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Subjects
(
    ID             INTEGER     NOT NULL AUTO_INCREMENT,
    FacID          VARCHAR(15),
    Priority       INTEGER     NOT NULL,
    NameBG         VARCHAR(15) NOT NULL,
    NameDE         VARCHAR(15) NOT NULL,
    NameEN         VARCHAR(15) NOT NULL,
    TotalDuration  INTEGER,
    WeeklyDuration INTEGER,
    TypeID         INTEGER,
    SemTypeID      INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (TypeID) REFERENCES SubjectTypes (ID),
    FOREIGN KEY (SemTypeID) REFERENCES SemesterTypes (ID)
);

CREATE TABLE IF NOT EXISTS RoomTypes
(
    ID        INTEGER     NOT NULL AUTO_INCREMENT,
    TypeValue VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Rooms
(
    RoomNumber INTEGER NOT NULL AUTO_INCREMENT,
    Capacity   INTEGER NOT NULL,
    TypeID     INTEGER,
    PRIMARY KEY (RoomNumber),
    FOREIGN KEY (TypeID) REFERENCES RoomTypes (ID)
);

CREATE TABLE IF NOT EXISTS ProgrammeTypes
(
    ID        INTEGER     NOT NULL AUTO_INCREMENT,
    TypeValue VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS Programmes
(
    ID         INTEGER     NOT NULL AUTO_INCREMENT,
    ValueBG    VARCHAR(25) NOT NULL,
    ValueDE    VARCHAR(25) NOT NULL,
    ValueEN    VARCHAR(25) NOT NULL,
    ValueShort VARCHAR(25) NOT NULL,
    TypeID     INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (TypeID) REFERENCES ProgrammeTypes (ID)
);

CREATE TABLE IF NOT EXISTS Groups
(
    ID         INTEGER     NOT NULL AUTO_INCREMENT,
    ValueBG    VARCHAR(25) NOT NULL,
    ValueDE    VARCHAR(25) NOT NULL,
    ValueEN    VARCHAR(25) NOT NULL,
    ValueShort VARCHAR(25) NOT NULL,
    TypeID     INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (TypeID) REFERENCES Programmes (ID)
);

CREATE TABLE IF NOT EXISTS GroupHasSubject
(
    ID        INTEGER NOT NULL AUTO_INCREMENT,
    GroupID   INTEGER,
    SubjectID VARCHAR(15),
    PRIMARY KEY (ID),
    FOREIGN KEY (GroupID) REFERENCES Groups (ID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects (ID)
);

CREATE TABLE IF NOT EXISTS LecturerTeachesSubject
(
    ID         INTEGER NOT NULL AUTO_INCREMENT,
    LecturerID INTEGER,
    SubjectID  VARCHAR(15),
    PRIMARY KEY (ID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturers (ID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects (ID)
);

CREATE TABLE IF NOT EXISTS Schedule
(
    ID                INTEGER NOT NULL AUTO_INCREMENT,
    LecturerSubjectID INTEGER,
    GroupSubjectID    INTEGER,
    SubjDate          DATE    NOT NULL,
    StartTime         TIME(0) NOT NULL,
    EndTime           TIME(0) NOT NULL,
    Duration          INTEGER NOT NULL,
    PRIMARY KEY (ID, SubjDate, StartTime),
    FOREIGN KEY (GroupSubjectID) REFERENCES GroupHasSubject (ID),
    FOREIGN KEY (LecturerSubjectID) REFERENCES LecturerTeachesSubject (ID)
);