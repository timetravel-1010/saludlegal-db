/*
 * Description: Object responsible for restricting the value of the is_active 
 * 				field of the plan_types table in the APP_HIST_CLINICA schema 
 * 				to only 1 or 0 to indicate true and false respectively.
 * Author: Daniel Vélez
 * Creation Date: 17/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.plan_types ADD CONSTRAINT ck_plan_type_status CHECK (is_active IN (1,0));