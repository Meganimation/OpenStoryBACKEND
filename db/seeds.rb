# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guestUser = (User.create(name: 'Guest User')) 
caprice = (User.create(name: 'Caprice')) 
testGenre = (Genre.create(name: 'Horror'))
testStory = (Story.create(questionOne: 'Cats', questionTwo: 'Laptops', questionThree: 'My Story', questionFour: 'test', questionFive: 'test', questionSix: 'The Test', user: guestUser, genre: testGenre)) 
testStory1 = (Story.create(questionOne: 'Dogs', questionTwo: 'Laptops', questionThree: 'A Story', questionFour: 'test', questionFive: 'test', questionSix: 'The Test', user: caprice, genre: testGenre)) 

#const Storytt = one day you were walking through {this.state.location} when you saw {this.state.allUsers.name.random}, The end

## <genre {Horror}> render return 'one day you were walking through {this.state.location} when you saw {this.state.allUsers.name.random}, The end.

#Save? Y

# this.state.finalStory={storyPOSTstringify story description: storytt user: user genre:genre}