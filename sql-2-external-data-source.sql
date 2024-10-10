CREATE EXTERNAL DATA SOURCE CST8911_Storage
WITH (
    LOCATION = 'wasbs://csvfiles@cst8911midtermstorage.blob.core.windows.net', -- wasbs://<blob_container_name>@<azure_storage_account_name>.blob.core.windows.net
    CREDENTIAL = PolyDemoCredential
);