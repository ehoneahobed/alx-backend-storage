-- A SQL script that ranks country origins of bands, ordered by 
-- the number of (non-unique) fans
-- Column names must be: origin and nb_fans
-- Your script can be executed on any database
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
