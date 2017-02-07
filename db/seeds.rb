require 'faker'

Article.destroy_all

10.times do
  article = Article.new(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph(8, true, 4)
  )
  article.save!
end
