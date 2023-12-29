/*
 * Description: Object responsible for generating unique identifiers for the records 
 * 				in the healhcare_professionals table. 
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
CREATE SEQUENCE APP_HIST_CLINICA.seq_healhcare_professionals START WITH 1 MINVALUE 1 MAXVALUE 999999 NOCYCLE NOORDER;