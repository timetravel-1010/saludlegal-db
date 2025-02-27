CREATE OR REPLACE PACKAGE BODY APP_HIST_CLINICA.pkg_medical_records_reports IS 
	
	PROCEDURE generate_MEDICAL_RECORDS_REPORT(directory varchar2) IS 
		
	custom_exception EXCEPTION;
	refcur SYS_REFCURSOR;
	ts varchar2(128) :=  to_char(systimestamp,  'dd-mm-yyyy-hh24-mi-ss');
	file_name varchar2(255);

	BEGIN
		file_name := 'medical_records_report-' || ts || '.xlsx';
		dbms_output.put_line(file_name);
		-- Generate report
		pkg_medical_records.get_all_medical_records(refcur);
		as_xlsx.query2sheet(
						p_rc => refcur--,
						--p_directory => 'C:\Users\1007671877\Documents\Reports',
						--p_filename => 'test.xlsx',
						--p_sheet => 1
						);
		as_xlsx.save(directory, file_name);
		--DBMS_OUTPUT.put_line ('WRITE');
	
	EXCEPTION
		WHEN custom_exception THEN
			raise_application_error(-20001, 'Custom Error pkg_medical_records_reports');
		WHEN OTHERS THEN 
			raise_application_error(SQLCODE, SQLERRM, TRUE);
		
	END generate_MEDICAL_RECORDS_REPORT;
		
END pkg_medical_records_reports;
/
