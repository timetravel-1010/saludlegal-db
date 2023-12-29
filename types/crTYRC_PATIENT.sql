/*
 * Description: Object responsible for specifying the fields and types of values that 
 * 				have to be sent to add a new record to the PATIENTS table of the 
 * 				APP_HIST_CLINICA schema.
 * Author: Daniel Vélez
 * Creation Date: 17/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * 
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE TYPE TYRC_PATIENT AS OBJECT (
	document_number NUMBER(10),
	document_type VARCHAR2(50),
	name_1 VARCHAR2(50),
	name_2 VARCHAR2(50),
	lastname_1 VARCHAR2(50),
	lastname_2 VARCHAR2(50),
	birth_date DATE,
	gender VARCHAR2(50),
	sex CHAR(1),
	address VARCHAR2(128),
	phone_number VARCHAR2(20),
	plan_type_id NUMBER(2)
);