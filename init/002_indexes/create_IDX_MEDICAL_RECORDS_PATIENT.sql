/*
 * Description: Object responsible for improving the performance of queries that search for 
 * 				medical records based on the patient's ID.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE INDEX idx_medical_records_patient ON APP_HIST_CLINICA.medical_records(patient_id);
