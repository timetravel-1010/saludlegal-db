/*
 * Description: responsible for setting the medical_record_id column of the medical_records 
 * 				table in the APP_HIST_CLINICA schema as a primary key, to guarantee the 
 * 				unique identity of each record in the table.
 * Author: Daniel Vélez
 * Creation Date: 12/10/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
ALTER TABLE APP_HIST_CLINICA.medical_records ADD CONSTRAINT pk_medical_record PRIMARY KEY (medical_record_id);