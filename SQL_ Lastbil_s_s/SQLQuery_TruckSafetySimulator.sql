CREATE TABLE Trucks (
    ID INTEGER PRIMARY KEY,
    modell VARCHAR(50),
    registreringsnummer VARCHAR(20)
);

CREATE TABLE Users (
    ID INTEGER PRIMARY KEY,
    namn VARCHAR(100),
    roll VARCHAR(50),
    epost VARCHAR(100)
);

CREATE TABLE SensorData (
    ID INTEGER PRIMARY KEY,
    truckID INTEGER,
    timestamp DATETIME,
    värde DECIMAL(10,2),
    typ VARCHAR(50),
    FOREIGN KEY (truckID) REFERENCES Trucks(ID)
);

CREATE TABLE Reports (
    ID INTEGER PRIMARY KEY,
    userID INTEGER,
    dataintervall VARCHAR(50),
    skapat_datum DATETIME,
    FOREIGN KEY (userID) REFERENCES Users(ID)
);

CREATE TABLE Notifications (
    ID INTEGER PRIMARY KEY,
    userID INTEGER,
    typ VARCHAR(50),
    meddelande TEXT,
    status VARCHAR(20),
    FOREIGN KEY (userID) REFERENCES Users(ID)
);