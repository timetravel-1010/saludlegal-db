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
CREATE OR REPLACE PACKAGE APP_HIST_CLINICA.pkg_app_create_medical_records IS 

	/* Declaration of public data types */

	/* Declaration of public variables */
	
	/* Declaration of public methods and functions */
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
	PROCEDURE create_MEDICAL_RECORD (
		in_med_record IN TYPE_MEDICAL_RECORD
	);

END pkg_app_create_medical_records;
/
