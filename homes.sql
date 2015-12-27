SELECT id,
       street_address,
       city.name AS city,
       zip,
       extended_zip,
       county.name AS county,
       subdivision.name AS subdivision,
       hoa,
       elementary.name AS elementary,
       asking,
       recently_sold,
       last_sold,
       year_last_sold,
       year_built,
       square_feet,
       acres,
       stars_j,
       stars_b
  FROM property
  JOIN city USING (city_id)
  JOIN county USING (county_id)
  JOIN elementary USING (elementary_id)
  JOIN subdivision USING (subdivision_id);
