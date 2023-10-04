#Summary bulanan dari data transaksi bulanan
SELECT
  FORMAT_DATE('%B %Y', created_at) AS Bulan,
  COUNT(*) AS jumlah_transaksi FROM `luthfiyah-project-001.DQLab.order` 
GROUP BY
  Bulan
ORDER BY
  Bulan;

#Summary data transaksi
SELECT
COUNT(*) as jumlah_transaksi_tidak_dibayar 
FROM `luthfiyah-project-001.DQLab.order` 
WHERE paid_at='NA';

#Summary data transaksi
SELECT
COUNT(*) as jumlah_transaksi_dibayar_tapi_tidak_dikirim
FROM `luthfiyah-project-001.DQLab.order` 
WHERE paid_at!='NA' AND delivery_at='NA';

#Summary data transaksi
SELECT
COUNT(*) as jumlah_transaksi_tidak_dikirim
FROM `luthfiyah-project-001.DQLab.order` 
WHERE delivery_at='NA';

#Summary data transaksi
SELECT
COUNT(*) as jumlah_transaksi_dibayar_tapi_tidak_dikirim
FROM `luthfiyah-project-001.DQLab.order` 
WHERE paid_at=delivery_at;
