# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do

  owner = Owner.find_or_create_by(name: Faker::Name.name)

  10.times do
    article = owner.articles.find_or_create_by(name: Faker::Name.name)
    article.update(price: Faker::Commerce.price, description: "Random text")
  end

end