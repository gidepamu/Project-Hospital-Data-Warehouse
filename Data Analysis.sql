-- Beban kerja dokter
SELECT
	COUNT(fact_hospital.physiciankey) as jumlah_penanganan,
	dim_physician.physicianName as nama_dokter
FROM
	fact_hospital
INNER JOIN
	dim_physician on dim_physician.physiciankey = fact_hospital.physiciankey
GROUP BY
	nama_dokter
ORDER BY
	jumlah_penanganan DESC

-- Beban kerja perawat
SELECT
	COUNT(fact_hospital.nurseKey) as jumlah_penanganan,
	dim_nurse.name as nama_perawat
FROM
	fact_hospital
INNER JOIN
	dim_nurse on dim_nurse.Nursekey = fact_hospital.nurseKey
GROUP BY
	nama_perawat
ORDER BY
	jumlah_penanganan DESC

-- Jumlah pendapatan dari undergoes
SELECT
	SUM(fact_hospital.undergoesCost) as jumlah_pendapatan,
	dim_procedure.procedureName as nama_procedure,
	CASE
	WHEN dim_patient.countrykey = '7' THEN
		'Dalam Negeri'
	ELSE
		'Luar Negeri'
	END as asal_pasien
FROM 
	fact_hospital
INNER JOIN
	dim_procedure on dim_procedure.procedurekey = fact_hospital.procedureKey
INNER JOIN
	dim_patient on dim_patient.patientkey = fact_hospital.patientKey
GROUP BY
	dim_procedure.procedureName, dim_patient.countrykey
ORDER BY
	jumlah_pendapatan DESC


-- Jumlah pasien dari luar negeri
SELECT
	count(fact_hospital.patientKey) as jumlah_kunjungan,
	dim_country.countryName as asal_negara
FROM
	fact_hospital
LEFT JOIN
	dim_patient on dim_patient.patientKey = fact_hospital.patientkey
LEFT JOIN
	dim_country on dim_country.countrykey = dim_patient.countrykey
WHERE
	dim_country.countrykey !='7'
GROUP BY
	asal_negara
ORDER BY
	jumlah_kunjungan DESC