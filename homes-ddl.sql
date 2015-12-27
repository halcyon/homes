-- DROP TABLE property CASCADE;
-- DROP TABLE city CASCADE;
-- DROP TABLE county CASCADE;
-- DROP TABLE elementary CASCADE;
-- DROP TABLE subdivision CASCADE;

CREATE TABLE subdivision(
  subdivision_id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  hoa MONEY NOT NULL);

CREATE TABLE elementary(
  elementary_id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL);

CREATE TABLE county(
  county_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL);

CREATE TABLE city(
  city_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL);

CREATE TABLE property(
  id SERIAL PRIMARY KEY,
  asking MONEY NOT NULL,
  recently_sold MONEY NOT NULL,
  last_sold MONEY NOT NULL,
  year_last_sold INTEGER NOT NULL,
  street_address TEXT NOT NULL,
  city_id INTEGER REFERENCES city(city_id),
  zip INTEGER NOT NULL,
  extended_zip INTEGER,
  county_id INTEGER REFERENCES county(county_id),
  subdivision_id INTEGER REFERENCES subdivision(subdivision_id),
  elementary_id INTEGER REFERENCES elementary(elementary_id),
  year_built INTEGER NOT NULL,
  square_feet INTEGER NOT NULL,
  acres REAL NOT NULL,
  stars_j INTEGER NOT NULL CHECK (stars_j >= 0 AND stars_j <= 5),
  stars_b INTEGER NOT NULL CHECK (stars_b >= 0 AND stars_b <= 5));
