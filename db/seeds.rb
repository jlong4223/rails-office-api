# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#     Office.create(
#         author: "Michael Scott",
#         quote: Faker::TvShows::MichaelScott.quote
#     )
# end 

# User.create({name: 'seed', email: 'seed@seed.com', password: 'seed'})

# 50.times do
#     Park.create(
#         author: 'Character',
#         quote: Faker::TvShows::ParksAndRec.character
#     )
# end

swansons = Swanson.create([
    {
        author: "Ron Swanson",
        quote: "I regret nothing"
    },
    {
        author: "Ron Swanson",
        quote: "Dear frozen yogurt, you are the celery of desserts. Be ice cream, or be nothing."
    },
    {
        author: "Ron Swanson",
        quote: "Fishing relaxes me. It’s like yoga, except I still get to kill something."
    },
    {
        author: "Ron Swanson",
        quote: "When I eat, it is the food that is scared."
    },
    {
        author: "Ron Swanson",
        quote: "he less I know about other people’s affairs, the happier I am. I’m not interested in caring about people. I once worked with a guy for three years and never learned his name. Best friend I ever had. We still never talk sometimes."
    },
    {
        author: "Ron Swanson",
        quote: "Just give me all the bacon and eggs you have. Wait … I worry what you heard was, ‘Give me a lot of bacon and eggs.’ What I said was, give me all the bacon and eggs you have. Do you understand?"
    },
    {
        author: "Ron Swanson",
        quote: "I’ve cried twice in my life. Once when I was 7 and hit by a school bus. And then again when I heard that Li’l Sebastian had passed."
    },
    {
        author: "Ron Swanson",
        quote: "Don’t start chasing applause and acclaim. That way lies madness."
    },
    {
        author: "Ron Swanson",
        quote: "I call this turf ‘n’ turf. It’s a 16-ounce T-bone and a 24-ounce porterhouse. Also, whiskey and a cigar. I am going to consume all of this at the same time because I am a free American."
    },
    {
        author: "Ron Swanson",
        quote: "I’m a simple man. I like pretty, dark-haired women and breakfast food."
    },
    {
        author: "Ron Swanson",
        quote: "When people get too chummy with me, I like to call them by the wrong name to let them know I don’t really care about them."
    },
    {
        author: "Ron Swanson",
        quote: "If there were more food and fewer people, this would be a perfect party."
    },
    {
        author: "Ron Swanson",
        quote: "That is a canvas sheet, the most versatile object known to man. It can be used to make tents, backpacks, shoes, stretchers, sails, tarpaulins, and I suppose, in the most dire of circumstances, it can be a surface on which to make art."
    },
    {
        author: "Ron Swanson",
        quote: "Any dog under 50 pounds is a cat, and cats are useless."
    },
    {
        author: "Ron Swanson",
        quote: "I’d wish you the best of luck but I believe luck is a concept created by the weak to explain their failures."
    },
    {
        author: "Ron Swanson",
        quote: "Crying: Acceptable at funerals and the Grand Canyon."
    },
    {
        author: "Ron Swanson",
        quote: "There are three acceptable haircuts: high and tight, crew cut, buzz cut."
    },
])

puts "=== Seeded Swanson Quotes in Database ==="