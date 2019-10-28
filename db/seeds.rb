#Categories:
creative_writing = Category.create(name: "Creative Writing", description: "Discuss Your Personal Stories and Ideas")
entertainment = Category.create(name: "Entertainment", description: "Music, Television, and Film")
gaming = Category.create(name: "Gaming", description: "The Immersive Experience")
technology = Category.create(name: "Technology", description: "The latest trends and applications")

#Users:
user_1 = User.create(username: "Alex Z", email: "alexz@gmail.com", password: "alexz", bio: "Software Developer", location: "New Jersey", interests: "Writing, Coding, and Video Games")
user_2 = User.create(username: "Ranger", email: "ranger@gmail.com", password: "ranger", bio: "College Student", location: "New York", interests: "Hockey, Film, and Guitar")
user_3 = User.create(username: "User3", email: "user3@gmail.com", password: "user3", bio: "Graphic Designer", location: "Seattle", interests: "Drawing, Television, and Music")
user_4 = User.create(username: "Coder4", email: "coder4@gmail.com", password: "coder4", bio: "Front End Engineer", location: "San Jose", interests: "Programming, Tech News, and Marvel")
