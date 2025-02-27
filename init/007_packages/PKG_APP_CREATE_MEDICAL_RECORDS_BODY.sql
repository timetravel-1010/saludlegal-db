CREATE OR REPLACE PACKAGE BODY APP_HIST_CLINICA.pkg_app_create_medical_records IS 
	
	PROCEDURE create_MEDICAL_RECORD (
					in_med_record IN TYPE_MEDICAL_RECORD
					--o_med_record_id OUT NUMBER
	) IS 
		
	med_record pkg_medical_records.type_MEDICAL_RECORD;
	custom_exception EXCEPTION;

	BEGIN
		
		/* Patient Data */
		med_record.PATIENT_ID := in_med_record.PATIENT_ID;
		med_record.HEALTHCARE_PROFESSIONAL_ID := in_med_record.HEALTHCARE_PROFESSIONAL_ID;
		med_record.VITAL_SIGNS := in_med_record.VITAL_SIGNS;
		med_record.SYMPTOMATOLOGY := in_med_record.SYMPTOMATOLOGY;
		med_record.INJURIES := in_med_record.INJURIES;
		med_record.CONSULTATION_REASON := in_med_record.CONSULTATION_REASON;
		med_record.DIAGNOSIS := in_med_record.DIAGNOSIS;
		med_record.MEDICAL_BACKGROUND := in_med_record.MEDICAL_BACKGROUND;
		med_record.INTERCONSULTATIONS := in_med_record.INTERCONSULTATIONS;
		med_record.EPICRISIS := in_med_record.EPICRISIS;
	
		-- Insert record
		pkg_medical_records.insert_medical_record(med_record);
		--o_med_record_id := med_record.MEDICAL_RECORD_ID;
	
	EXCEPTION
		WHEN custom_exception THEN
			raise_application_error(-20001, 'Custom Error pkg_app_create_medical_records');
		WHEN OTHERS THEN 
			raise_application_error(SQLCODE, SQLERRM, TRUE);
		
	END create_MEDICAL_RECORD;
		
END pkg_app_create_medical_records;
/
