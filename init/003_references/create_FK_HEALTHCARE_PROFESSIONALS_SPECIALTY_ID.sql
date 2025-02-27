/*
 * Description: Object responsible for establishing a relationship between the healthcare_professionals 
 * 				and specialties tables in the APP_HIST_CLINICA scheme, through the specialty_id column.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.healthcare_professionals ADD CONSTRAINT fk_healthcare_professionals_specialty_id FOREIGN KEY (specialty_id) REFERENCES APP_HIST_CLINICA.specialties(specialty_id);
