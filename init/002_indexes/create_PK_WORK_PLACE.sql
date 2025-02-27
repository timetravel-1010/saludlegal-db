/*
 * Description: Object responsible for setting the healthcare_professional_id and care_center_id columns 
 * 				of the work_places table in the APP_HIST_CLINICA schema as the primary key, to 
 * 				guarantee the unique identity of each record in the table.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.work_places ADD CONSTRAINT pk_work_place PRIMARY KEY (healthcare_professional_id, care_center_id);