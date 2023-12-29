/*
 * Description: Object responsible for storing the information of registered healthcare professionals.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.healthcare_professionals (
	healthcare_professional_id NUMBER(6),
	document_number NUMBER(10) NOT NULL,
	name_1 VARCHAR2(50) NOT NULL,
	name_2 VARCHAR2(50),
	lastname_1 VARCHAR2(50) NOT NULL,
	lastname_2 VARCHAR2(50),
	bith_date DATE NOT NULL,
	medical_license NUMBER(10) NOT NULL,
	specialty_id NUMBER(4) NOT NULL,
	address VARCHAR2(128) NOT NULL,
	phone_number VARCHAR2(20) NOT NULL
);

COMMENT ON TABLE APP_HIST_CLINICA.healthcare_professionals IS 'Registered healthcare professionals';