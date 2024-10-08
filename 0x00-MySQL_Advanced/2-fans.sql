-- A script to rank the origins of bancs based on the total number of non unique fans

SELECT COALESCE(origin, 'Unknown') AS origin,
       COALESCE(SUM(nb_fans), 0) AS total_fans  FROM metal_bands
WHERE fans IS NOT NULL
GROUP BY origin ORDER BY total_fans DESC;
