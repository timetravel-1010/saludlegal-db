/*
 * Description: object responsible for managing dml transactions on the entity PATIENTS.
 * Author: Daniel Vélez
 * Creation Date: 17/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE PACKAGE APP_HIST_CLINICA.pkg_patients IS 


	/* Declaration of public data types */
	subtype tyrcPATIENT IS PATIENTS%rowtype;

	TYPE table_PATIENTS IS TABLE OF tyrcPATIENT;	

	/* Declaration of public variables */
	
	/* Declaration of public methods and functions */
	/*
	 * Description: object responsible for inserting patient data into the patients table.
	 * Author: Daniel Vélez
	 * Creation Date: 17/10/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE insert_PATIENT(io_record IN OUT nocopy tyrcPATIENT);

	/* Declaration of public methods and functions */
	/*
	 * Description: object responsible for inserting patients data into the patients table.
	 * Author: Daniel Vélez
	 * Creation Date: 06/11/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE insert_PATIENTS(io_records IN OUT table_PATIENTS);
	
	
	/*
	 * Description: object responsible for retrieving data from a patient in the patients table.
	 * Author: Daniel Vélez
	 * Creation Date: 17/10/2023
	 * ManagementId: Jira-numericCode
	 * @Copyright: SALUD Legal
	 * -------------------------------------------------------------------------------------
	 * Modification History
	 * Date				Order		Person					Action
	 * -------------------------------------------------------------------------------------
	 * -------------------------------------------------------------------------------------
	 * */
	PROCEDURE getPATIENT_ID(id IN NUMBER, o_record OUT nocopy tyrcPATIENT);
	
	
END pkg_patients;