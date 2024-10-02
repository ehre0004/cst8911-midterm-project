CREATE EXTERNAL TABLE dbo.games_ranking (
    id INT IDENTITY(1,1),
    game_name VARCHAR(100),
    genre VARCHAR(100),
    rank_type VARCHAR(100),
    rank INT,
    CONSTRAINT PK_games_ranking_id PRIMARY KEY (id)
    )
    WITH (
        LOCATION = '../'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        );

CREATE EXTERNAL TABLE dbo.steam_game_reviews (
    id INT IDENTITY(1,1),
    hours_played int,
    recommendation VARCHAR(255),
    `date` DATE,
    game_name VARCHAR(255),
    username VARCHAR(255)
    CONSTRAINT PK_steam_game_reviews_id PRIMARY KEY (id)
    )
    WITH (
        LOCATION = '../'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        );
/* 
CREATE EXTERNAL TABLE dbo.games_description (
    id INT IDENTITY(1,1),
    `name` VARCHAR(100),
    short_description VARCHAR(255),
    -- NOTE: delimited list of genres, probably int (0 is not of genre, 1 is of genre)
    min_system_requirements_os VARCHAR(255),
    min_system_requirements_graphics_processor VARCHAR(255),
    -- NOTE: more min system requirements columns from cleaned data
    release_date DATE,
    developer VARCHAR(50),
    publisher VARCHAR(50),
    overall_player_rating_positive int,
    overall_player_rating_negative int,
    number_of_reviews_from_purchased_people int,
    number_of_english_reviews int,
    link VARCHAR(150),
    CONSTRAINT PK_steam_game_reviews_id PRIMARY KEY (id)
    )
    WITH (
        LOCATION = '../'
        ,DATA_SOURCE = CST8911_Storage
        ,FILE_FORMAT = csvFormat
        ); */