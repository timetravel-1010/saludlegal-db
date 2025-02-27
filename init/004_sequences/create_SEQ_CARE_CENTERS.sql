/*
 * Description: Object responsible for generating unique identifiers for the records in the care_centers table.   
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE SEQUENCE APP_HIST_CLINICA.seq_care_centers START WITH 1 MINVALUE 1 MAXVALUE 9999 NOCYCLE NOORDER;