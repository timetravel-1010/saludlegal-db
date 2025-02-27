/*
 * Description: Object responsible for specifying the fields and types of values that 
 * 				have to be sent to add a new medical record to the MEDICLA_RECORDS 
 * 				table of the APP_HIST_CLINICA schema.
 * Author: Daniel Vélez
 * Creation Date: 19/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * 
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE TYPE APP_HIST_CLINICA.TYPE_MEDICAL_RECORD AS OBJECT (
	patient_id NUMBER(9),
	healthcare_professional_id NUMBER(6),
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
