SELECT protocol,
  COUNT(*) AS item_count
FROM ctsdd.item
WHERE protocol IN (SELECT protocol
                   FROM cts.cts_protocols
                   WHERE create_date LIKE '%2018')
  AND panel NOT LIKE 'VCT_%'
GROUP BY protocol
ORDER BY protocol;
