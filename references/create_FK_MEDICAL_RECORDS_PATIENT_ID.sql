/*
 * Description: Object responsible for establishing a relationship between the medical_records 
 * 				and patients tables in the APP_HIST_CLINICA scheme, through the	patient_id column.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.medical_records ADD CONSTRAINT fk_medical_records_patient_id FOREIGN KEY (patient_id) REFERENCES patients(patient_id);