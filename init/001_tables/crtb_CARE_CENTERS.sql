/*
 * Description: Object used to store patient care centers. These are the 
 *				places where the patient can be cared of, for example: 
 *				clinics, hospitals, medical centers, offices. 
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.care_centers (
	care_center_id NUMBER(4),
	name VARCHAR2(100) NOT NULL,
	description VARCHAR2(255) NOT NULL,
	address VARCHAR2(100) NOT NULL,
	phone_number VARCHAR2(20) NOT NULL
);

COMMENT ON TABLE APP_HIST_CLINICA.care_centers IS 'Places where the patient can be cared of';

SELECT table_name FROM user_tables;
