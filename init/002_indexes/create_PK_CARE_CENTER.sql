/*
 * Description: Object responsible for establishing the care_center_id column of the 
 * 				care_centers table of the APP_HIST_CLINICA schema as the primary key, 
 * 				to guarantee the unique identity of each record in the table.  
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.care_centers ADD CONSTRAINT pk_care_center PRIMARY KEY (care_center_id);