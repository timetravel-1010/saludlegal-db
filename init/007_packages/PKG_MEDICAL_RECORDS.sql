/*
 * Description: object responsible for managing dml transactions on the entity MEDICAL_RECORDS.
 * Author: Daniel Vélez
 * Creation Date: 20/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE PACKAGE APP_HIST_CLINICA.pkg_medical_records IS 


	/* Declaration of public data types */
	subtype type_MEDICAL_RECORD IS MEDICAL_RECORDS%rowtype;
	--TYPE tb_type_medical_records IS TABLE OF type_medical_record_details INDEX BY BINARY_INTEGER;
	TYPE t_medical_record IS RECORD (
	 medical_record_id        MEDICAL_RECORDS.MEDICAL_RECORD_ID%TYPE,
	 patient_id              PATIENTS.PATIENT_ID%TYPE,
	 patient_full_name        PATIENTS.NAME_1%TYPE,
	 healthcare_professional_id HEALTHCARE_PROFESSIONALS.HEALTHCARE_PROFESSIONAL_ID%TYPE,
	 healthcare_professional_full_name HEALTHCARE_PROFESSIONALS.NAME_1%TYPE,
	 creation_date            MEDICAL_RECORDS.CREATION_DATE%TYPE,
	 vital_signs              MEDICAL_RECORDS.VITAL_SIGNS%TYPE,
	 symptomatology           MEDICAL_RECORDS.SYMPTOMATOLOGY%TYPE,
	 injuries               MEDICAL_RECORDS.INJURIES%TYPE,
	 consultation_reason      MEDICAL_RECORDS.CONSULTATION_REASON%TYPE,
	 diagnosis               MEDICAL_RECORDS.DIAGNOSIS%TYPE,
	 medical_background       MEDICAL_RECORDS.MEDICAL_BACKGROUND%TYPE,
	 interconsultations       MEDICAL_RECORDS.INTERCONSULTATIONS%TYPE,
	 epicrisis               MEDICAL_RECORDS.EPICRISIS%TYPE
	 );
	
	 TYPE t_medical_records IS TABLE OF t_medical_record;
	 l_medical_records t_medical_records;
	
	/* Declaration of public variables */
	
	/* Declaration of public methods and functions */	
	/*
	 * Description: Object responsible for inserting medical record data into the medical_records table.
	 * Author: Daniel Vélez
	 * Creation Date: 20/10/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE insert_MEDICAL_RECORD(io_med_record IN OUT nocopy type_MEDICAL_RECORD);

	/*
	 * Description: Object responsible for obtaining all the medical record data in the 
	 * medical_records table using a SYS_REFCURSOR.
	 * by the patient document number.
	 * Author: Daniel Vélez
	 * Creation Date: 03/11/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE get_PATIENT_MEDICAL_RECORDS(patient_dc IN NUMBER, o_med_records IN OUT nocopy SYS_REFCURSOR);
	
	/*
	 * Description: Object responsible for obtaining all the medical record data in the 
	 * medical_records table using a table type.
	 * Author: Daniel Vélez
	 * Creation Date: 08/11/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE get_ALL_MEDICAL_RECORDS(io_medical_records  IN OUT nocopy t_medical_records);

	/*
	 * Description: Object responsible for obtaining all the medical record data in the 
	 * medical_records table using a table type.
	 * Author: Daniel Vélez
	 * Creation Date: 09/11/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE get_ALL_MEDICAL_RECORDS(io_medical_records  IN OUT nocopy SYS_REFCURSOR);
	

END pkg_medical_records;
/
