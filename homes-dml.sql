INSERT INTO city (name) VALUES ('Johns Creek');
INSERT INTO county (name) VALUES ('Fulton');
INSERT INTO subdivision (name, hoa) VALUES ('Lonestar Village', 500);
INSERT INTO elementary (name) VALUES ('Beavis Elementary');

INSERT INTO property (street_address,city_id,zip,extended_zip,county_id,subdivision_id,elementary_id,asking,recently_sold,last_sold,year_last_sold,year_built,square_feet,acres,stars_j,stars_b)
  VALUES (
  '1422 Columbus Ave',
  (SELECT city_id FROM city WHERE name='Johns Creek'),
  30548,
  3444,
  (SELECT county_id FROM county WHERE name='Fulton'),
  (SELECT subdivision_id FROM subdivision WHERE name='Lonestar Village'),
  (SELECT elementary_id FROM elementary WHERE name='Beavis Elementary'),
  150000,
  200000,
  200000,
  2014,
  1999,
  2000,
  .5,
  3,
  3);

INSERT INTO subdivision (name, hoa) VALUES ('Earl Grey', 6000);
INSERT INTO elementary (name) VALUES ('Turd Ferguson Elementary');
INSERT INTO property (street_address,city_id,zip,extended_zip,county_id,subdivision_id,elementary_id,asking,recently_sold,last_sold,year_last_sold,year_built,square_feet,acres,stars_j,stars_b)
  VALUES(
  '999 Wexford Way',
  (SELECT city_id FROM city WHERE name='Johns Creek'),
  30024,
  1929,
  (SELECT county_id FROM county WHERE name='Fulton'),
  (SELECT subdivision_id FROM subdivision WHERE name='Earl Grey'),
  (SELECT elementary_id FROM elementary WHERE name='Turd Ferguson Elementary'),
  134000,
  100000,
  150000,
  2010,
  1958,
  3500,
  .9,
  2,
  5);
