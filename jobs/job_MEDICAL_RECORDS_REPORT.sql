/*
 * Description: Object responsible for periodically executing (every month) a procedure for 
 * generating the medical records report of all patients.
 * Author: Daniel Vélez
 * Creation Date: 08/11/2023
 * ManagementId: Jira-numericCode
 * @Copyright: SALUD Legal
 * */
BEGIN
  	DBMS_SCHEDULER.CREATE_JOB (
   		job_name            =>  'MEDICAL_RECORDS_REPORT_JOB',
	   	job_type            =>  'STORED_PROCEDURE',
	   	job_action          =>  'APP_HIST_CLINICA.PKG_MEDICAL_RECORDS_REPORTS.GENERATE_MEDICAL_RECORDS_REPORT',
	   	number_of_arguments =>  1,
	   	start_date          =>  '08-NOV-23 10.45.00 AM America/Bogota',
	   	repeat_interval     =>  'FREQ=MINUTELY;INTERVAL=1', -- 'FREQ=MONTHLY;INTERVAL=1',
	   	end_date            =>  '08-NOV-33 08.00.00 PM America/Bogota',
	   	comments            =>  'Job responsible for periodically executing (every month) a procedure for generating the medical records report of all patients'
	);
 
 	DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (
 		job_name          => 'MEDICAL_RECORDS_REPORT_JOB',
      	argument_position => 1,
      	argument_value    => 'REPORTS_DIRECTORY');
      
	DBMS_SCHEDULER.enable('MEDICAL_RECORDS_REPORT_JOB');
END;