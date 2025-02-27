/*
 * Description: Object responsible for establishing a relationship between the work_places 
 * 				and care_centers tables in the APP_HIST_CLINICA scheme, through the	
 * 				care_center_id column.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.work_places ADD CONSTRAINT fk_work_places_care_center_id FOREIGN KEY (care_center_id) REFERENCES APP_HIST_CLINICA.care_centers(care_center_id);
