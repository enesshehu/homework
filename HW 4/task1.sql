-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
USE pet_database;

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS petEvent;
DROP TABLE IF EXISTS petPet;

-- Create petPet table
CREATE TABLE petPet (
  petname VARCHAR(20) NOT NULL,       -- Name of the pet
  owner VARCHAR(45) NOT NULL,         -- Owner of the pet
  species VARCHAR(15),                -- Species of the pet (e.g., cat, dog)
  gender CHAR(1) CHECK (gender IN ('M', 'F')), -- Gender should be 'M' or 'F'
  birth DATE,                         -- Birthdate of the pet
  death DATE,                         -- Date of death (NULL if still alive)
  PRIMARY KEY (petname)               -- Primary key on petname
);

-- Create petEvent table
CREATE TABLE petEvent (
  petname VARCHAR(20) NOT NULL,       -- Name of the pet (linked to petPet)
  eventdate DATE NOT NULL,            -- Date of the event
  eventtype VARCHAR(45) NOT NULL,     -- Type of event (e.g., vet visit)
  remark VARCHAR(255),                -- Additional notes about the event
  PRIMARY KEY (petname, eventdate),   -- Composite primary key (considered best for uniqueness)
  FOREIGN KEY (petname) REFERENCES petPet(petname) -- Foreign key constraint to petPet
);
