/*
 * Description: Object used to store the types of medical contracts (plans) offered.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE TABLE APP_HIST_CLINICA.plan_types (
	plan_type_id NUMBER(2),
	description VARCHAR2(255) NOT NULL,
	is_active NUMBER NOT NULL
);

COMMENT ON TABLE APP_HIST_CLINICA.plan_types IS 'Type of medical contract for patients';