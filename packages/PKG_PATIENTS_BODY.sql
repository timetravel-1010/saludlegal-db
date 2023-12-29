CREATE OR REPLACE PACKAGE BODY APP_HIST_CLINICA.pkg_patients IS 
	
	PROCEDURE insert_PATIENT(io_record IN OUT nocopy tyrcPATIENT) IS 
		
		custom_exception EXCEPTION;
	
	BEGIN 
		io_record.PATIENT_ID := seq_patients.NEXTVAL;
		io_record.AFFILIATION_DATE := systimestamp;
		io_record.ACTIVE_DATE := systimestamp;
		io_record.IS_ACTIVE := 1;
		
		INSERT INTO PATIENTS VALUES /*+pkg_patients.insPATIENT*/ io_record;
	
	EXCEPTION 
		WHEN custom_exception THEN
			raise_application_error(-20001, 'Custom Error');
		WHEN OTHERS THEN 
			raise_application_error(SQLCODE, SQLERRM, TRUE);
	
	END insert_PATIENT;


	/* ------------------------------------------------------------------------------------- */


	PROCEDURE insert_PATIENTS(io_records IN OUT table_PATIENTS) IS 

		custom_exception EXCEPTION;

	BEGIN 
		FOR i IN 1..io_records.COUNT
		LOOP 
			io_records(i).PATIENT_ID := seq_patients.NEXTVAL;
	       	io_records(i).AFFILIATION_DATE := systimestamp;
	       	io_records(i).ACTIVE_DATE := systimestamp;
	       	io_records(i).IS_ACTIVE := 1;
		END LOOP;
		
	   	FORALL i IN 1..io_records.COUNT
	       	INSERT INTO PATIENTS VALUES io_records(i);
	
	EXCEPTION 
	   	WHEN custom_exception THEN
	    	raise_application_error(-20001, 'Custom Error');
	   	WHEN OTHERS THEN 
	       	raise_application_error(SQLCODE, SQLERRM, TRUE);
	END insert_PATIENTS;	
	
	
	/* ------------------------------------------------------------------------------------- */


	PROCEDURE getPATIENT_ID(id IN NUMBER, o_record OUT nocopy tyrcPATIENT) IS 
	
		custom_exception EXCEPTION; 
		
		CURSOR patientCU IS 
			SELECT /*+INDEX(PATIENT PATIENT_ID)*/
			*
			FROM PATIENTS
			WHERE /*pkg_patients.getPATIENT*/
			PATIENT_ID = id;
		
		BEGIN 
			OPEN patientCU;
			FETCH patientCU INTO o_record;
			CLOSE patientCU;
		
		EXCEPTION 
			WHEN custom_exception THEN
				IF patientCU%isopen THEN 
					CLOSE patientCU;
				END IF;
				raise_application_error(-20001, 'Custom Error getPATIENT_ID');
			WHEN OTHERS THEN 
				IF patientCU%isopen THEN 
					CLOSE patientCU;
				END IF;
				raise_application_error(-20000, SQLCODE ||'=>'|| SQLERRM, true);
			
			END getPATIENT_ID;
	

END pkg_patients;