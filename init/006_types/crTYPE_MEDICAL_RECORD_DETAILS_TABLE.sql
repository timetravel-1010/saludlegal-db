/*
 * Description: Object responsible for specifying the fields and value types that are 
 * saved for a medical record with details such as patient and doctor name.
 * Author: Daniel Vélez
 * Creation Date: 03/11/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * 
 * -------------------------------------------------------------------------------------
 * Modification History
 * Date				Order		Person					Action
 * -------------------------------------------------------------------------------------
 * -------------------------------------------------------------------------------------
 * */
CREATE OR REPLACE TYPE APP_HIST_CLINICA.TYPE_MEDICAL_RECORD_DETAILS_TABLE AS TABLE OF TYPE_MEDICAL_RECORD_DETAILS;
/
