CREATE EXTERNAL DATA SOURCE CST8911_Storage
WITH (
    LOCATION = '', -- example: secure endpoint uses 'abfss://csvFiles@cst8911-midterm-storage.dfs.core.windows.net'
    CREDENTIAL = PolyDemoCredential -- your credential name here
    , TYPE = HADOOP
);