-- A SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
-- 
-- Requirements:
--
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: band_name and lifespan (in years)
-- You should use attributes formed and split for computing the lifespan
-- Your script can be executed on any database
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
