CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'P4$$W0RD'

CREATE DATABASE SCOPED CREDENTIAL PolyDemoCredential
    WITH
    IDENTITY = 'cst8911-midterm-storage',
    SECRET = '<storage_account_key_sas_token>' -- !! NOTE: replace <this> with SAS token !!
    ;