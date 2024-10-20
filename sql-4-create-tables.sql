CREATE EXTERNAL TABLE dbo.games_ranking (
    game_name VARCHAR(100),
    genre VARCHAR(100),
    rank_type VARCHAR(100),
    [rank] INT
    )
    WITH (
        LOCATION = '/games_ranking.csv'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        );

CREATE EXTERNAL TABLE dbo.steam_game_reviews (
    hours_played float,
    helpful int,
    funny int,
    recommendation VARCHAR(255),
    [date] DATE,
    game_name VARCHAR(255),
    username VARCHAR(255),
    num_products_in_account VARCHAR(100)
    )
    WITH (
        LOCATION = '/steam_game_reviews.csv'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        );

CREATE EXTERNAL TABLE dbo.games_description (
    [name] VARCHAR(100),
    short_description VARCHAR(500),
    release_date DATE,
    developer VARCHAR(100),
    publisher VARCHAR(100),
    overall_player_rating VARCHAR(50),
    number_of_reviews_from_purchased_people VARCHAR(100),
    number_of_english_reviews int,
    link VARCHAR(300)
    )
    WITH (
        LOCATION = '/games_description.csv'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        ); 