/*
 * Description: Object used to store the medical record information of the patients.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.medical_records (
	medical_record_id NUMBER(15),
	patient_id NUMBER(9) NOT NULL,
	healthcare_professional_id NUMBER(6) NOT NULL,
	creation_date DATE NOT NULL,
	vital_signs VARCHAR2(255) NOT NULL,
	symptomatology VARCHAR2(1024) NOT NULL,
	injuries VARCHAR2(2048) NOT NULL,
	consultation_reason VARCHAR2(255) NOT NULL,
	diagnosis VARCHAR2(2048) NOT NULL,
	medical_background VARCHAR2(2048) NOT NULL,
	interconsultations VARCHAR2(2048) NOT NULL,
	epicrisis VARCHAR2(2048) NOT NULL
);

COMMENT ON TABLE APP_HIST_CLINICA.medical_records IS 'Medical records of patients';