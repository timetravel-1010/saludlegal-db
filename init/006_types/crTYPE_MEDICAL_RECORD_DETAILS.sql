/*
 * Description: Object responsible for specifying the fields and value types that are 
 * saved for a medical record with details such as patient and doctor name.
 * Author: Daniel Vélez
 * Creation Date: 03/11/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * 
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE TYPE APP_HIST_CLINICA.TYPE_MEDICAL_RECORD_DETAILS IS RECORD   (
	medical_record_id NUMBER,
	patient_id NUMBER,
	patient_full_name VARCHAR2(255),
	healthcare_professional_id NUMBER,
	healthcare_professional_full_name VARCHAR2(255),
	creation_date DATE,
	vital_signs VARCHAR2(255),
	symptomatology VARCHAR2(1024),
	injuries VARCHAR2(2048),
	consultation_reason VARCHAR2(255),
	diagnosis VARCHAR2(2048),
	medical_background VARCHAR2(2048),
	interconsultations VARCHAR2(2048),
	epicrisis VARCHAR2(2048)
);
/
