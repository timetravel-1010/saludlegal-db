CREATE OR REPLACE PACKAGE BODY APP_HIST_CLINICA.pkg_app_create_patients IS 
	
	PROCEDURE create_PATIENT (
					iPatient IN TYRC_PATIENT
					--oPatientId OUT NUMBER
	) IS 
		
	patient pkg_patients.tyrcPATIENT;
	custom_exception EXCEPTION;

	BEGIN
		
		/* Patient Data */
		patient.DOCUMENT_NUMBER := iPatient.DOCUMENT_NUMBER;
		patient.DOCUMENT_TYPE := iPatient.DOCUMENT_TYPE;
		patient.NAME_1 := iPatient.NAME_1;
		patient.NAME_2 := iPatient.NAME_2;
		patient.LASTNAME_1 := iPatient.LASTNAME_1;
		patient.LASTNAME_2 := iPatient.LASTNAME_2;
		patient.BIRTH_DATE := iPatient.BIRTH_DATE;
		patient.GENDER := iPatient.GENDER;
		patient.SEX := iPatient.SEX;
		patient.ADDRESS := iPatient.ADDRESS;
		patient.PHONE_NUMBER := iPatient.PHONE_NUMBER;
		patient.PLAN_TYPE_ID := iPatient.PLAN_TYPE_ID;
	
		-- Insert record
		pkg_patients.insert_PATIENT(patient);
		--oPatientId := patient.PATIENT_ID;
	
	EXCEPTION
		WHEN custom_exception THEN
			raise_application_error(-20001, 'Custom Error');
		WHEN OTHERS THEN 
			raise_application_error(SQLCODE, SQLERRM, TRUE);
		
	END create_PATIENT;

		
END pkg_app_create_patients;
/
