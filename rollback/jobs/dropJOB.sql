BEGIN
   FOR rec IN (SELECT job_name
                 FROM user_scheduler_jobs)
   LOOP
	   dbms_output.put_line(rec.job_name);
	   dbms_scheduler.drop_job(rec.job_name);
   END LOOP;
END;