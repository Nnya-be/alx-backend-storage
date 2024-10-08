-- List all bands with Glam rock as their main style, ranked by longevity
-- Assuming table name is metal_bands and the necessary columns exist (adjust as needed)

SELECT 
    band_name, 
    CASE 
        WHEN split IS NULL THEN 2022 - formed  
        ELSE split - formed                   
    END AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'
ORDER BY 
    lifespan DESC;