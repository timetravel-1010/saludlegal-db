/*
 * Description: Object responsible for establishing the plan_type_id column of the 
 * 				plan_types table of the APP_HIST_CLINICA schema as the primary key, 
 * 				to guarantee the unique identity of each record in the table.  
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.plan_types ADD CONSTRAINT pk_plan_type PRIMARY KEY (plan_type_id);