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
  {
    name: "New York Knicks",
    conference: "East",
    division: "Atlantic",
    scores: [78, 81, 110, 93, 102],
    abbreviation: "NYK"
  },
  {
    name: "Golden State Warriors",
    conference: "West",
    division: "Pacific",
    scores: [102, 115, 132, 108, 122],
    abbreviation: "GSW"
  }
]

User.create(USERS)
Discussion.create(DISCUSSIONS)
Comment.create(COMMENTS)
NbaTeam.create(NBA_TEAMS)
