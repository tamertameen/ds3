use DS3;
SET UNIQUE_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE MEMBERSHIP DISABLE KEYS;

LOAD DATA LOCAL INFILE "../../../data_files/membership/membership.csv" INTO TABLE MEMBERSHIP FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

ALTER TABLE MEMBERSHIP ENABLE KEYS;
SET UNIQUE_CHECKS=1;
SET FOREIGN_KEY_CHECKS=1;