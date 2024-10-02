-- Create a temp table to hold the imported data
CREATE EXTERNAL TABLE dbo.games_ranking (
    id INT IDENTITY(1,1),
    game_name VARCHAR(255),
    genre VARCHAR(255),
    rank_type VARCHAR(255),
    rank INT,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    )
    WITH (
        LOCATION = '../'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        );