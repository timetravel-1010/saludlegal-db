/*
 * Description: Object responsible for establishing a relationship between the patients 
 * 				and plan_types tables in the APP_HIST_CLINICA scheme, through the	
 * 				plan_type_id column.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.patients ADD CONSTRAINT fk_patients_plan_type_id FOREIGN KEY (plan_type_id) REFERENCES APP_HIST_CLINICA.plan_types(plan_type_id);
