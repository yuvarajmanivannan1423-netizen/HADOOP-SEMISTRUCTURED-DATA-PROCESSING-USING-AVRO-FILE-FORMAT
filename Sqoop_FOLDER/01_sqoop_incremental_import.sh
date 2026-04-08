=============================
🔴 Edge Node
=============================

# Move to Edge Node working directory
rm -rf /home/cloudera/avsrcdir
mkdir /home/cloudera/avsrcdir
cd /home/cloudera/avsrcdir

# Create secure password file
echo -n "password" > /home/cloudera/passfile

# Delete job if it already exists
sqoop job --delete inpjob

# Create Sqoop job for incremental import
sqoop job --create inpjob -- import \
--connect jdbc:mysql://localhost/prodb \
--username username \
--password-file file:///home/cloudera/passfile \
-m 1 \
--table customer_src \
--target-dir /user/cloudera/customer_stage_loc \
--incremental append \
--check-column id \
--last-value 0 \
--as-avrodatafile

# List available Sqoop jobs
sqoop job --list

# Execute Sqoop job
sqoop job --exec inpjob

# Create HDFS directory for AVRO schema
hadoop fs -mkdir /user/cloudera/avscdirpro

# Upload generated AVSC schema to HDFS
hadoop fs -put /home/cloudera/avsrcdir/customer_src.avsc /user/cloudera/avscdirpro