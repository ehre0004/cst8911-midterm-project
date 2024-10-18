CREATE VIEW dbo.descriptionAndRank AS 
    SELECT games_description.game_name,games_ranking.rank,games_description.release_date,games_description.overall_player_rating
    FROM games_description 
    INNER JOIN games_ranking ON games_description.game_name = games_ranking.game_name;