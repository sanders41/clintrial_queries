SELECT protocol,
  COUNT(*) AS item_count
FROM ctsdd.item
WHERE protocol = 'ENTER PROTOCOL NAME'
  AND panel NOT LIKE 'VCT_%'
GROUP BY protocol
ORDER BY protocol;
