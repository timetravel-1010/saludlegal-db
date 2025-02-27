/*
 * Description: Object responsible for improving the performance of queries that search for 
 * 				medical records based on the patient's document number.
 * Author: Daniel Vélez
 * Creation Date: 03/11/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE INDEX idx_patients_pacient_document_number ON APP_HIST_CLINICA.patients(document_number);
