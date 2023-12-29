/*
 * Description: Object responsible for managing the reports related with medical records.
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
CREATE OR REPLACE PACKAGE APP_HIST_CLINICA.pkg_medical_records_reports IS 

	/* Declaration of public data types */

	/* Declaration of public variables */
	
	/* Declaration of public methods and functions */
	/*
	 * Description: Object responsible for generating an excel file with the medical records
	 * of all patients.
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
	PROCEDURE generate_MEDICAL_RECORDS_REPORT(directory varchar2);

END pkg_medical_records_reports;