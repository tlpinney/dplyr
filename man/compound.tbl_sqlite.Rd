\name{compound.tbl_sqlite}
\alias{compound.tbl_sqlite}
\title{Create a compound sqlite tbl}
\usage{
  \method{compound}{tbl_sqlite} (x, y)
}
\description{
  Create a compound sqlite tbl
}
\examples{
l <- lahman()
batting <- select(tbl(lahman(), "Batting"), playerID:lgID, G_batting)
pitching <- select(filter(tbl(lahman(), "Fielding"), POS == "P"), playerID:lgID, GS)

both <- compound(batting, pitching)
hou <- filter(both, teamID == "HOU")
explain_tbl(hou)
head(hou)
}

