-- Day 1

CREATE TABLE animals (
  id INT,
  name VARCHAR(255),
	date_of_birth DATE,
	escape_attempts INT,
	neutered BOOLEAN,
	weight_kg DECIMAL(10, 2)
);

ALTER TABLE animals
ALTER COLUMN id SET NOT NULL;

ALTER TABLE animals
ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE animals
ADD PRIMARY KEY (id);

-- Day 2

-- Add a column species of type string to your animals table. Modify your schema.sql file.
ALTER TABLE animals
ADD COLUMN spices VARCHAR(255);

-- Rename column name
ALTER TABLE animals
RENAME COLUMN spices TO species;

-- Day 3
-- Create a table named owners with the following columns:
-- 	id: integer (set it as autoincremented PRIMARY KEY)
-- 	full_name: string
-- 	age: integer
CREATE TABLE owners(
	id SERIAL PRIMARY KEY, 
	full_name VARCHAR(255), 
	age INT
);
-- DONE

-- Create a table named species with the following columns:
-- 	id: integer (set it as autoincremented PRIMARY KEY)
-- 	name: string
CREATE TABLE species(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);
-- DONE

-- Modify animals table:
-- 	Make sure that id is set as autoincremented PRIMARY KEY
-- Type SERIAL to column id was set immidiately after creating animals table. 
-- Please see line 12 - 19.
-- DONE

-- 	Remove column species from animals table:
ALTER TABLE animals
DROP COLUMN species;
-- DONE

-- 	Add column species_id into animals table which is a foreign key referencing species table
ALTER TABLE animals
ADD COLUMN species_id INT REFERENCES species(id);
-- DONE

-- 	Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals
ADD COLUMN owner_id INT REFERENCES owners(id);
-- DONE
