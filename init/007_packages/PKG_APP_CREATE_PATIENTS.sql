/*
 * Description: Object responsible for creating new patients in the PATIENTS table of 
 * 				the APP_HIST_CLINICA schema.
 * Author: Daniel Vélez
 * Creation Date: 19/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE PACKAGE APP_HIST_CLINICA.pkg_app_create_patients IS 

	/* Public data type declaration */

	/* Declaration of public variables */
	
	/* Declaration of methods and public functions */
	TYPE patient_table_type_list IS TABLE OF tyrc_patient;
	/*
	 * Description: Object responsible for creating a new patient.
	 * Author: Daniel Vélez
	 * Creation Date: 19/10/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE create_PATIENT (
		iPatient IN TYRC_PATIENT
		--oPatientId OUT NUMBER 
	);


END pkg_app_create_patients;
/
