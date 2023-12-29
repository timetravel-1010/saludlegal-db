/*
 * Description: Object responsible for storing the information of registered patients.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * 
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * 17/10/2023		None		Daniel Vélez			Change fields name_2 and lastname_2 
 * 														to a NULL values.
 * -------------------------------------------------------------------------------------
 * */
CREATE TABLE APP_HIST_CLINICA.patients (
	patient_id NUMBER(9),
	document_number NUMBER(10) NOT NULL,
	document_type VARCHAR2(50) NOT NULL,
	name_1 VARCHAR2(50) NOT NULL,
	name_2 VARCHAR2(50),
	lastname_1 VARCHAR2(50) NOT NULL,
	lastname_2 VARCHAR2(50),
	birth_date DATE NOT NULL,
	gender VARCHAR2(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	address VARCHAR2(128) NOT NULL,
	phone_number VARCHAR2(20) NOT NULL,
	affiliation_date DATE NOT NULL,
	plan_type_id NUMBER(2) NOT NULL,
	active_date DATE NOT NULL,
	is_active NUMBER NOT NULL,
	retirement_date DATE
);

COMMENT ON TABLE APP_HIST_CLINICA.patients IS 'Registered patients';