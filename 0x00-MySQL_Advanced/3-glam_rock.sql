-- List all bands with Glam rock as their main style, ranked by longevity
-- Assuming table name is metal_bands and the necessary columns exist (adjust as needed)
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;