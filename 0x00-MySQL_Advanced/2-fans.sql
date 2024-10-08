-- Ranking country origins of bands based on the total number of non-unique fans
-- The table is assumed to be metal_bands, adjust it based on your actual table name

SELECT 
    origin, 
    SUM(fans) AS nb_fans
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    nb_fans DESC;