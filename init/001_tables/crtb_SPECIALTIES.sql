/*
 * Description: Object used to store the medical specialties.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.specialties (
	specialty_id NUMBER(4),
	name VARCHAR2(512) NOT NULL 
);

COMMENT ON TABLE APP_HIST_CLINICA.specialties IS 'Medical specialties of health professionals';
