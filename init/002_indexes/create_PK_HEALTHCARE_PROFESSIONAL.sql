/*
 * Description: Object responsible for setting the healthcare_professional_id column of the 
 * 				healthcare_professionals table of the APP_HIST_CLINICA schema as a primary 
 * 				key, to guarantee the unique identity of each record in the table.  
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.healthcare_professionals ADD CONSTRAINT pk_healthcare_professional PRIMARY KEY (healthcare_professional_id);