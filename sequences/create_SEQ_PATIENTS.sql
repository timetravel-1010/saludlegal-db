/*
 * Description: Object responsible for generating unique identifiers for the records in the patients table. 
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE SEQUENCE APP_HIST_CLINICA.seq_patients START WITH 1 MINVALUE 1 MAXVALUE 999999999 NOCYCLE NOORDER;