/*
 * Description: Object responsible for restricting the value of the documentNumber field of the 
 * Patients table of the APP_HIST_CLINICA schema to be unique.
 * Author: Daniel Vélez
 * Creation Date: 10/11/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.patients ADD CONSTRAINT ck_patients_unique_document_number UNIQUE(document_number);