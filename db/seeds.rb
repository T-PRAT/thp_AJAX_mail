Email.destroy_all

5.times do
	Email.create(
		object: Faker::Lorem.sentence(word_count: 4),
		content: Faker::Lorem.paragraph,
		author: Faker::Name.first_name,
		receiver: Faker::Name.first_name)
end
