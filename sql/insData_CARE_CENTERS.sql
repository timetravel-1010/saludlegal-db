BEGIN 
	
	INSERT INTO APP_HIST_CLINICA.CARE_CENTERS(CARE_CENTER_ID, NAME, DESCRIPTION, ADDRESS, PHONE_NUMBER)
  	VALUES (1, 'Centro de Atención Médica 1', 'Centro de atención médica en Bogotá', 'Calle 14 #204', '5551234');
  	
  	INSERT INTO APP_HIST_CLINICA.CARE_CENTERS(CARE_CENTER_ID, NAME, DESCRIPTION, ADDRESS, PHONE_NUMBER)
  	VALUES (2, 'Centro de Atención Médica 2', 'Centro de atención médica en Medellín', 'Av 1a Norte #45', '5555678');

--

COMMIT;

EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      raise_application_error(-20000, SQLCODE || '=>' || SQLERRM, TRUE);   
END;