# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'ffaker'

[User, Page, TextItem].each(&:delete_all)



5.times do
  page = Page.new()
  page.title = FFaker::Lorem.words(num = Random.rand(1..3)).join(" ")
  page.excerpt = FFaker::Lorem.paragraphs(paragraph_count = Random.rand(1..2)).join(" ")

  1.times do
    #slug = ['slideshow', 'container', 'sidebar_right', 'sidebar_left', 'jumbotron'].sample
    slug = 'small-container'
    struct = page.structures.new(name: slug.humanize, slug: slug, description: FFaker::Lorem.sentence(word_count = Random.rand(1..2)) )
  end # Structures

  page.save!

end # Pages

Structure.all.each do |structure|

    1.times do

      text_item = TextItem.new(title: FFaker::Lorem.words(num = Random.rand(1..3)).join(" "), content: FFaker::Lorem.paragraphs(paragraph_count = Random.rand(2..3)).join(" ") )
      #code_item = CodeItem.new(code: FFaker::HTMLIpsum.table() )

      item = structure.items.new()
      item.itemizable = text_item #[text_item, code_item].sample

    end # Items

    structure.save!

end


2.times do
  user = User.new()
  user.email = FFaker::Internet.email
  user.first_name = FFaker::Name.first_name
  user.last_name = FFaker::Name.last_name
  user.username = user.first_name.underscore
  user.password = 'password'
  user.remote_avatar_url = FFaker::Avatar.image(user.username, '500x500', 'png', '1')
  user.save!
end
