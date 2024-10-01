CREATE EXTERNAL DATA SOURCE CST8911_Storage
WITH (
    LOCATION = '', -- example: secure endpoint uses 'abfss://csvfiles@cst8911midtermstorage.dfs.core.windows.net'
    CREDENTIAL = PolyDemoCredential -- your credential name here
    , TYPE = HADOOP
);