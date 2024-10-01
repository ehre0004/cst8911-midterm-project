CREATE EXTERNAL DATA SOURCE CST8911_Storage
WITH (
    LOCATION = '', -- example: secure endpoint uses 'abfss://csv_container_name_in_storage@my_storage_acc.dfs.core.windows.net'
    CREDENTIAL = -- your credential name here
    , TYPE = HADOOP
);