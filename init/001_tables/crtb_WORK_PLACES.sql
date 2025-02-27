/*
 * Description: Object used to map the care centers where a healthcare professional works.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.work_places (
	healthcare_professional_id NUMBER(6),
	care_center_id NUMBER(4) NOT NULL
);

COMMENT ON TABLE APP_HIST_CLINICA.work_places IS 'Relates health professionals to the care centers where they work';