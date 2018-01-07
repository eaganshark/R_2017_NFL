
# Team Total Games
teamTotalGames <- function(games, team) {
  totalGames <- subset(games, (
      (games$homeTeam == team) | (games$roadTeam == team))
	)
	return(nrow(totalGames))
}

# Team Total Games Won
teamTotalGamesWon <- function(games, team) {
  totalGamesWon <- subset(games, (
      ((games$homeTeam == team) & (games$htTotalScore > games$rtTotalScore))
		| ((games$roadTeam == team) & (games$rtTotalScore > games$htTotalScore)))
	)
	return(nrow(totalGamesWon))
}

# Team Total Games Lost
teamTotalGamesLost <- function(games, team) {
  totalGamesLost <- subset(games, (
      ((games$homeTeam == team) & (games$htTotalScore < games$rtTotalScore))
		| ((games$roadTeam == team) & (games$rtTotalScore < games$htTotalScore)))
	)
	return(nrow(totalGamesLost))
}

# Team Total Games Tied
teamTotalGamesTied <- function(games, team) {
  totalGamesTied <- subset(games, (
      ((games$homeTeam == team) & (games$htTotalScore == games$rtTotalScore))
		| ((games$roadTeam == team) & (games$rtTotalScore == games$htTotalScore)))
	)
	return(nrow(totalGamesTied))
}



# Team Total Home Games
teamTotalHomeGames <- function(games, team) {
  totalHomeGames <- subset(games, (games$homeTeam == team))
	return(nrow(totalHomeGames))
}

# Team Total Home Games Won
teamTotalHomeGamesWon <- function(games, team) {
  totalHomeGamesWon <- subset(games, 
      ((games$homeTeam == team) & (games$htTotalScore > games$rtTotalScore))
	)
	return(nrow(totalHomeGamesWon))
}

# Team Total Home Games Lost
teamTotalHomeGamesLost <- function(games, team) {
  totalHomeGamesLost <- subset(games,
      ((games$homeTeam == team) & (games$htTotalScore < games$rtTotalScore))
	)
	return(nrow(totalHomeGamesLost))
}

# Team Total Home Games Tied
teamTotalHomeGamesTied <- function(games, team) {
  totalHomeGamesTied <- subset(games,
      ((games$homeTeam == team) & (games$htTotalScore == games$rtTotalScore))
	)
	return(nrow(totalHomeGamesTied))
}


# Team Total Road Games
teamTotalRoadGames <- function(games, team) {
  totalRoadGames <- subset(games, (games$roadTeam == team))
	return(nrow(totalRoadGames))
}

# Team Total Road Games Won
teamTotalRoadGamesWon <- function(games, team) {
  totalRoadGamesWon <- subset(games, 
      ((games$roadTeam == team) & (games$rtTotalScore > games$htTotalScore))
	)
	return(nrow(totalRoadGamesWon))
}

# Team Total Road Games Lost
teamTotalRoadGamesLost <- function(games, team) {
  totalRoadGamesLost <- subset(games,
      ((games$roadTeam == team) & (games$rtTotalScore < games$htTotalScore))
	)
	return(nrow(totalRoadGamesLost))
}

# Team Total Road Games Tied
teamTotalRoadGamesTied <- function(games, team) {
  totalRoadGamesTied <- subset(games,
      ((games$roadTeam == team) & (games$rtTotalScore == games$htTotalScore))
	)
	return(nrow(totalRoadGamesTied))
}







