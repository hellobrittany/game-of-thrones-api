json.array! @characters.each do |character|
	json.id character.id
	json.first_name character.first_name
	json.house character.house
	json.city character.city
end 