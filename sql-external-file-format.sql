-- Create external file format to read csv files.
CREATE EXTERNAL FILE FORMAT csvFormat
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS(FIELD_TERMINATOR=',', STRING_DELIMITER='"', FIRST_ROW=2, USE_TYPE_DEFAULT=FALSE, ENCODING='UTF8')
);