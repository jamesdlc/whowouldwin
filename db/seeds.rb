USERS = [
  {
    user_name: "swittaker",
    first_name: "Forest",
    last_name: "Swittaker",
    email: "switt@yahoo.com",
    password_digest: "$2a$10$PY2ABiZo3SFpQ3xjiUdtbOMSRAQOCe7p7kM4BeYhSFj.Kpgch8KE.",
    image_url: "https://s-media-cache-ak0.pinimg.com/564x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg"
  }, #pw switt
  {
    user_name: "slickricktharuler",
    first_name: "Slick",
    last_name: "Rick",
    email: "slick@rick.com",
    password_digest: "$2a$10$7W4SGCYpvVnExQIt7rgI3.8gcNA1jfhNrBeRnjbW4oOT0eGKcHYg6",
    image_url: "http://www.thefamouspeople.com/profiles/images/slick-rick-4.jpg"
  } #pw rick
]

DISCUSSIONS = [
  {
    user_id: 1,
    title: "Test",
    content: "Hello World"
  }
]

COMMENTS = [
  {
    user_id: 1,
    content: "Why are you saying hello to the world?",
    discussion_id: 1
  }
]

NBA_TEAMS = [
  { name: "Boston Celtics", conference: "Eastern", division: "Atlantic", abbreviation: "BOS", scores: [98, 100, 107, 124, 104] },
  { name: "Brooklyn Nets", conference: "Eastern", division: "Atlantic", abbreviation: "BKN", scores: [96, 111, 105, 99, 103] },
  { name: "New York Knicks", conference: "Eastern", division: "Atlantic", abbreviation: "NYK", scores: [90, 89, 109, 97, 87] },
  { name: "Philadelphia 76ers", conference: "Eastern", division: "Atlantic", abbreviation: "PHI", scores: [105, 98, 108, 102, 107] },
  { name: "Toronto Raptors", conference: "Eastern", division: "Atlantic", abbreviation: "TOR", scores: [103, 122, 93, 111, 87 ] },
  { name: "Chicago Bulls", conference: "Eastern", division: "Central", abbreviation: "CHI", scores: [115, 121, 105, 98, 92] },
  { name: "Cleveland Cavaliers", conference: "Eastern", division: "Central", abbreviation: "CLE", scores: [109, 102, 109, 109, 112] },
  { name: "Detroit Pistons", conference: "Eastern", division: "Central", abbreviation: "DET", scores: [93, 112, 108, 89, 94] },
  { name: "Indiana Pacers", conference: "Eastern", division: "Central", abbreviation: "IND", scores: [97, 102, 129, 98, 103] },
  { name: "Milwaukee Bucks", conference: "Eastern", division: "Central", abbreviation: "MIL", scores: [92, 98, 109, 109, 80] },
  { name: "Atlanta Hawks", conference: "Eastern", division: "Southeast", abbreviation: "ATL", scores: [98, 94, 107, 95, 103] },
  { name: "Charlotte Hornets", conference: "Eastern", division: "Southeast", abbreviation: "CHA", scores: [117, 114, 98, 113, 111] },
  { name: "Miami Heat", conference: "Eastern", division: "Southeast", abbreviation: "MIA", scores: [88, 99, 118, 109, 106] },
  { name: "Orlando Magic", conference: "Eastern", division: "Southeast", abbreviation: "ORL", scores: [103, 107, 96, 112, 104] },
  { name: "Washington Wizards", conference: "Eastern", division: "Southeast", abbreviation: "WAS", scores: [109, 120, 113, 99, 121] },
  { name: "Golden State Warriors", conference: "Western", division: "Pacific", abbreviation: "GSW", scores: [125, 92, 100, 112, 117] },
  { name: "Los Angeles Clippers", conference: "Western", division: "Pacific", abbreviation: "LAC", scores: [105, 110, 98, 102, 91] },
  { name: "Los Angeles Lakers", conference: "Western", division: "Pacific", abbreviation: "LAL", scores: [101, 79, 110, 102, 81] },
  { name: "Phoenix Suns", conference: "Western", division: "Pacific", abbreviation: "PHX", scores: [114, 101, 121, 124, 90] },
  { name: "Sacramento Kings", conference: "Western", division: "Pacific", abbreviation: "SAC", scores: [81, 105, 114, 97, 107] },
  { name: "Dallas Mavericks", conference: "Western", division: "Southwest", abbreviation: "DAL", scores: [91, 101, 91, 103, 88] },
  { name: "Houston Rockets", conference: "Western", division: "Southwest", abbreviation: "HOU", scores: [116, 129, 130, 115, 86] },
  { name: "Memphis Grizzlies", conference: "Western", division: "Southwest", abbreviation: "MEM", scores: [104, 84, 99, 93, 92] },
  { name: "New Orleans Pelicans", conference: "Western", division: "Southwest", abbreviation: "NOH", scores: [109, 116, 100, 102, 97] },
  { name: "San Antonio Spurs", conference: "Western", division: "Southwest", abbreviation: "SAS", scores: [96, 102, 86, 98, 101] },
  { name: "Denver Nuggets", conference: "Northwest", division: "Northwest", abbreviation: "DEN", scores: [99, 84, 98, 102, 106] },
  { name: "Minnesota Timberwolves", conference: "Northwest", division: "Northwest", abbreviation: "MIN", scores: [144, 129, 106, 105, 124] },
  { name: "Oklahoma City Thunder", conference: "Northwest", division: "Northwest", abbreviation: "OKC", scores: [98, 112, 112, 115, 124] },
  { name: "Portland Trail Blazers", conference: "Northwest", division: "Northwest", abbreviation: "POR", scores: [107, 106, 115, 115, 111] },
  { name: "Utah Jazz", conference: "Northwest", division: "Northwest", abbreviation: "UTA", scores: [96, 92, 100, 99, 86] }
]

User.create(USERS)
Discussion.create(DISCUSSIONS)
Comment.create(COMMENTS)
NbaTeam.create(NBA_TEAMS)
