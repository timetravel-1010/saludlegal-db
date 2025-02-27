/*
 * Description: Object responsible for establishing a relationship between the medical_records 
 * 				and healthcare_professionals tables in the APP_HIST_CLINICA scheme, through the 
 * 				healthcare_professional_id column.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.medical_records ADD CONSTRAINT fk_medical_records_healthcare_professional_id FOREIGN KEY (healthcare_professional_id) REFERENCES APP_HIST_CLINICA.healthcare_professionals(healthcare_professional_id);
