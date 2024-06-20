CREATE OR REPLACE DATABASE TAWANDA_DEV;

-----------------------------------------------------------------------------------------

CREATE SCHEMA STAGE;

-----------------------------------------------------------------------------------------
CREATE STORAGE INTEGRATION SNOWFLAKE_SI
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::794363329170:role/snowflake-si-role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://snowflake-ninja')
;
-----------------------------------------------------------------------------------------
DESC INTEGRATION SNOWFLAKE_SI;
