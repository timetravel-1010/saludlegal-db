CREATE OR REPLACE PACKAGE BODY APP_HIST_CLINICA.pkg_medical_records IS 
	
	PROCEDURE insert_MEDICAL_RECORD(io_med_record IN OUT nocopy type_MEDICAL_RECORD) IS 
		
		/* TODO: Create a custom package to manage my own exceptions. */
		custom_exception EXCEPTION;
	
	BEGIN 
		io_med_record.MEDICAL_RECORD_ID := seq_medical_records.NEXTVAL;
		io_med_record.CREATION_DATE := systimestamp;
		
		INSERT INTO MEDICAL_RECORDS VALUES /*+pkg_patients.insPATIENT*/ io_med_record;
	
	EXCEPTION 
		WHEN custom_exception THEN
			raise_application_error(-20001, 'Custom Error pkg_medical_records');
		WHEN OTHERS THEN 
			raise_application_error(SQLCODE, SQLERRM, TRUE);
	
	END insert_MEDICAL_RECORD;

	
	/* ------------------------------------------------------------------------------------- */


	PROCEDURE  get_PATIENT_MEDICAL_RECORDS(patient_dc IN NUMBER, o_med_records IN OUT nocopy SYS_REFCURSOR) IS
	
		/* TODO: Create a custom package to manage exceptions. */
		custom_exception EXCEPTION;
		patientid NUMBER;
	
	BEGIN
		SELECT p.PATIENT_ID
	    INTO patientid
	    FROM PATIENTS p 
	    WHERE p.DOCUMENT_NUMBER = patient_dc;
	   
		/*OPEN med_records_cursor;
	  	FETCH med_records_cursor INTO 	_med_records;
	  	CLOSE med_records_cursor;*/
	   OPEN o_med_records FOR 
	   SELECT 
				mr.MEDICAL_RECORD_ID AS medical_record_id, 
				p.PATIENT_ID AS patient_id,
				p.NAME_1 || ' ' || p.NAME_2 || ' ' || p.LASTNAME_1 || ' ' || p.LASTNAME_2 AS patient_full_name, 
				hp.HEALTHCARE_PROFESSIONAL_ID AS healthcare_professional_id,
				hp.NAME_1 || ' ' || hp.NAME_2 || ' ' || hp.LASTNAME_1 || ' ' || hp.LASTNAME_2 AS healthcare_professional_full_name, 
				mr.CREATION_DATE AS creation_date,
				mr.VITAL_SIGNS AS vital_signs,
				mr.SYMPTOMATOLOGY AS symptomatology,
				mr.INJURIES AS injuries,
				mr.CONSULTATION_REASON AS consultation_reason,
				mr.DIAGNOSIS AS diagnosis,
				mr.MEDICAL_BACKGROUND AS medical_background,
				mr.INTERCONSULTATIONS AS interconsultations,
				mr.EPICRISIS AS epicrisis
			FROM MEDICAL_RECORDS mr
			INNER JOIN PATIENTS p
			ON mr.PATIENT_ID = p.PATIENT_ID 
			INNER JOIN HEALTHCARE_PROFESSIONALS hp
			ON mr.HEALTHCARE_PROFESSIONAL_ID = hp.HEALTHCARE_PROFESSIONAL_ID
			WHERE p.PATIENT_ID = patientid;
	   
	EXCEPTION
	    WHEN NO_DATA_FOUND THEN
	      dbms_output.put_line('No se encontró ningún paciente con el número de documento ingresado.');
	    
			
	END get_PATIENT_MEDICAL_RECORDS;

	
	/* ------------------------------------------------------------------------------------- */


	PROCEDURE  get_ALL_MEDICAL_RECORDS(io_medical_records IN OUT nocopy t_medical_records) IS
	
		/* TODO: Create a custom package to manage exceptions. */
		custom_exception EXCEPTION;
		
	BEGIN
		
	    SELECT 
			 mr.MEDICAL_RECORD_ID, 
			 p.PATIENT_ID,
			 p.NAME_1 || ' ' || p.NAME_2 || ' ' || p.LASTNAME_1 || ' ' || p.LASTNAME_2, 
			 hp.HEALTHCARE_PROFESSIONAL_ID,
			 hp.NAME_1 || ' ' || hp.NAME_2 || ' ' || hp.LASTNAME_1 || ' ' || hp.LASTNAME_2, 
			 mr.CREATION_DATE,
			 mr.VITAL_SIGNS,
			 mr.SYMPTOMATOLOGY,
			 mr.INJURIES,
			 mr.CONSULTATION_REASON,
			 mr.DIAGNOSIS,
			 mr.MEDICAL_BACKGROUND,
			 mr.INTERCONSULTATIONS,
			 mr.EPICRISIS
		 BULK COLLECT INTO io_medical_records
		 FROM MEDICAL_RECORDS mr
		 INNER JOIN PATIENTS p
		 ON mr.PATIENT_ID = p.PATIENT_ID 
		 INNER JOIN HEALTHCARE_PROFESSIONALS hp
		 ON mr.HEALTHCARE_PROFESSIONAL_ID = hp.HEALTHCARE_PROFESSIONAL_ID; 
	   
	EXCEPTION
	    WHEN NO_DATA_FOUND THEN
	      dbms_output.put_line('Error. ');
			
	END get_ALL_MEDICAL_RECORDS;


	/* ------------------------------------------------------------------------------------- */


	PROCEDURE  get_ALL_MEDICAL_RECORDS(io_medical_records IN OUT nocopy SYS_REFCURSOR) IS
	
		/* TODO: Create a custom package to manage exceptions. */
		custom_exception EXCEPTION;
		
	BEGIN
		
		
		OPEN io_medical_records FOR 
	    SELECT 
			 mr.MEDICAL_RECORD_ID, 
			 p.PATIENT_ID,
			 p.NAME_1 || ' ' || p.NAME_2 || ' ' || p.LASTNAME_1 || ' ' || p.LASTNAME_2, 
			 hp.HEALTHCARE_PROFESSIONAL_ID,
			 hp.NAME_1 || ' ' || hp.NAME_2 || ' ' || hp.LASTNAME_1 || ' ' || hp.LASTNAME_2, 
			 mr.CREATION_DATE,
			 mr.VITAL_SIGNS,
			 mr.SYMPTOMATOLOGY,
			 mr.INJURIES,
			 mr.CONSULTATION_REASON,
			 mr.DIAGNOSIS,
			 mr.MEDICAL_BACKGROUND,
			 mr.INTERCONSULTATIONS,
			 mr.EPICRISIS
		 FROM MEDICAL_RECORDS mr
		 INNER JOIN PATIENTS p
		 ON mr.PATIENT_ID = p.PATIENT_ID 
		 INNER JOIN HEALTHCARE_PROFESSIONALS hp
		 ON mr.HEALTHCARE_PROFESSIONAL_ID = hp.HEALTHCARE_PROFESSIONAL_ID; 
	   
	EXCEPTION
	    WHEN NO_DATA_FOUND THEN
	      dbms_output.put_line('Error. ');
			
	END get_ALL_MEDICAL_RECORDS;
	

END pkg_medical_records;
/
