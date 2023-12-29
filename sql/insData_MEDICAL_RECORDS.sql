BEGIN 

	INSERT
	INTO
	APP_HIST_CLINICA.MEDICAL_RECORDS(MEDICAL_RECORD_ID,
	PATIENT_ID,
	HEALTHCARE_PROFESSIONAL_ID,
	CREATION_DATE,
	VITAL_SIGNS,
	SYMPTOMATOLOGY,
	INJURIES,
	CONSULTATION_REASON,
	DIAGNOSIS,
	MEDICAL_BACKGROUND,
	INTERCONSULTATIONS,
	EPICRISIS)
VALUES (1,
	1,
	1,
	SYSTIMESTAMP, 
		'Presión arterial: 120/80 mmHg, Frecuencia cardíaca: 80 latidos por minuto, Temperatura corporal: 36.5°C', 
		'Dolor de cabeza, fiebre, escalofríos',
		'Caída en la escalera, fractura de tobillo derecho',
		'Consulta de rutina',
		'Infeccion respiratoria',
		'Diabetes tipo 2, alergia al polen',
		'Consulta con especialista en diabetes',
		'El paciente se recuperó completamente'
	);

INSERT
	INTO
	APP_HIST_CLINICA.MEDICAL_RECORDS(MEDICAL_RECORD_ID,
	PATIENT_ID,
	HEALTHCARE_PROFESSIONAL_ID,
	CREATION_DATE,
	VITAL_SIGNS,
	SYMPTOMATOLOGY,
	INJURIES,
	CONSULTATION_REASON,
	DIAGNOSIS,
	MEDICAL_BACKGROUND,
	INTERCONSULTATIONS,
	EPICRISIS)
VALUES (2,
		1,
		1,
		SYSTIMESTAMP, 
			'Presión arterial: 130/85 mmHg, Frecuencia cardíaca: 85 latidos por minuto, Temperatura corporal: 37.2°C', 
			'Dolor de garganta, tos, dificultad para respirar',
			'Contacto con un paciente infectado',
			'Sospecha de COVID-19',
			'Infección por COVID-19',
			'Diabetes tipo 1, alergia a la penicilina',
			'Consulta con especialista en infección respiratoria',
			'El paciente se pudo recuperar con tratamiento antibiótico'
		);

INSERT
	INTO
	APP_HIST_CLINICA.MEDICAL_RECORDS(MEDICAL_RECORD_ID,
	PATIENT_ID,
	HEALTHCARE_PROFESSIONAL_ID,
	CREATION_DATE,
	VITAL_SIGNS,
	SYMPTOMATOLOGY,
	INJURIES,
	CONSULTATION_REASON,
	DIAGNOSIS,
	MEDICAL_BACKGROUND,
	INTERCONSULTATIONS,
	EPICRISIS)
VALUES (3,
	1,
	2,
	SYSTIMESTAMP, 
		'Presión arterial: 125/80 mmHg, Frecuencia cardíaca: 75 latidos por minuto, Temperatura corporal: 36.8°C', 
		'Dolor abdominal, náuseas, vómitos',
		'Accidente de tráfico',
		'Sospecha de lesión en el hígado',
		'Lesión hepática',
		'Diabetes tipo 2, alergia al polen',
		'Consulta con especialista en hepatología',
		'El paciente se recuperó con tratamiento de apoyo'
	);

INSERT
	INTO
	APP_HIST_CLINICA.MEDICAL_RECORDS(MEDICAL_RECORD_ID,
	PATIENT_ID,
	HEALTHCARE_PROFESSIONAL_ID,
	CREATION_DATE,
	VITAL_SIGNS,
	SYMPTOMATOLOGY,
	INJURIES,
	CONSULTATION_REASON,
	DIAGNOSIS,
	MEDICAL_BACKGROUND,
	INTERCONSULTATIONS,
	EPICRISIS)
VALUES (4,
	2,
	1,
	SYSTIMESTAMP, 
		'Presión arterial: 140/90 mmHg, Frecuencia cardíaca: 100 latidos por minuto, Temperatura corporal: 37.5°C', 
		'Dolor en el pecho, dificultad para respirar',
		'Ninguna',
		'Consulta de emergencia',
		'Infarto de miocardio',
		'Hipertensión arterial, colesterol alto',
		'Ninguna',
		'El paciente fue ingresado en la unidad de cuidados intensivos y se le realizó un cateterismo cardíaco. Se colocaron stents en dos arterias coronarias. El paciente fue dado de alta después de una semana y se le recetaron medicamentos para controlar la presión arterial y el colesterol.'
	);

--

COMMIT;

EXCEPTION
WHEN OTHERS THEN
      ROLLBACK;

raise_application_error(-20000,
SQLCODE || '=>' || SQLERRM,
TRUE);
END;