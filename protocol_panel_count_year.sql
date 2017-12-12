SELECT protocol,
  COUNT(*) AS panel_count
FROM (SELECT DISTINCT protocol,
                      panel
      FROM ctsdd.item
      WHERE protocol IN (SELECT protocol
                         FROM cts.cts_protocols
                         WHERE create_date LIKE '%2018'))
WHERE panel NOT LIKE 'VCT_%'
GROUP BY protocol
ORDER BY protocol;
