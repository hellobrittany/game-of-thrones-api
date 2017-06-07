50.times do
	Character.create!(
										first_name: Faker::GameOfThrones.character, 
										house: Faker::GameOfThrones.house, 
										city: Faker::GameOfThrones.city)
end