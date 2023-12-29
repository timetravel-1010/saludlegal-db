/*
 * Description: Object responsible for generating unique identifiers for the records
 * 				in the medical records table. 
 * Author: Daniel Vélez
 * Creation Date: 18/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE SEQUENCE APP_HIST_CLINICA.seq_medical_records START WITH 1 MINVALUE 1 MAXVALUE 999999999999999 NOCYCLE NOORDER;