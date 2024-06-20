CREATE OR REPLACE PIPE MY_FIRST_PIPE
    AUTO_INGEST = TRUE
    AS COPY INTO PEOPLE  --CREATE A TABLE CALLED PEOPLE
FROM @AWS_EXT_STAGE_INTEGRATION
FILE_FORMAT= (  type = csv
                field_delimiter = ','
                skip_header = 1
            );
