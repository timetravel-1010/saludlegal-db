#!/bin/bash

# Docker container name
CONTAINER_NAME="saludlegal-db"

# Database connection parameters
SYS_CONN="SYS/SYSTEM@//localhost:1521/XEPDB1 as sysdba"
APP_CONN="APP_HIST_CLINICA/password@//localhost:1521/XEPDB1"

# Base directory inside container (where your SQL files are mounted)
CONTAINER_BASE_DIR="/opt/oracle/scripts"

# Function to execute SQL files in a directory
execute_sql_dir() {
    local dir_name=$1
    local connection=$2
    
    echo "Executing scripts in: $dir_name"
    
    sudo docker exec -i $CONTAINER_NAME bash -c \
        "for f in \$(ls $CONTAINER_BASE_DIR/$dir_name/*.sql | sort); do
            echo \"Executing \$f\";
            sqlplus -s $connection <<< \"@\$f\" || echo \"Error in \$f\";
         done"
}

# Execute all directories in order, regardless of previous failures
execute_sql_dir "000_create_user" "$SYS_CONN"
execute_sql_dir "001_tables" "$APP_CONN"
execute_sql_dir "002_indexes" "$APP_CONN"
execute_sql_dir "003_references" "$APP_CONN"
execute_sql_dir "004_sequences" "$APP_CONN"
# execute_sql_dir "005_directories" "$APP_CONN"
execute_sql_dir "006_types" "$APP_CONN"
execute_sql_dir "007_packages" "$APP_CONN"
execute_sql_dir "008_jobs" "$APP_CONN"
execute_sql_dir "009_sql_data" "$APP_CONN"

echo "Script execution completed. Check above for any errors."
