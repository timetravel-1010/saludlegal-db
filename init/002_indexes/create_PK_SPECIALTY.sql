/*
 * Description: Object responsible for establishing the specialty_id column of the 
 * 				specialties table of the APP_HIST_CLINICA schema as the primary key, 
 * 				to guarantee the unique identity of each record in the table.  
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.specialties ADD CONSTRAINT pk_specialty PRIMARY KEY (specialty_id);