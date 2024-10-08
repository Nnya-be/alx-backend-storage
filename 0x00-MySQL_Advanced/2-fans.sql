-- A script to rank the origins of bancs based on the total number of non unique fans

SELECT origin, SUM(fans) AS total_fans FROM metal_bands
GROUP BY origin ORDER BY total_fans;
