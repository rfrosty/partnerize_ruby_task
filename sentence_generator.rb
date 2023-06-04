require 'net/http'
require 'json'

def return_resource(resource, number)
  url = "https://swapi.dev/api/#{resource}/#{number}/"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def return_character
  character_info = return_resource('people', rand(1..15))
  gender = character_info['gender']
  title = gender == 'female' ? 'Ms.' : 'Mr.'
  surname = character_info['name'].split(' ').last
  "#{title} #{surname}"
end

def return_starship
  starship_info = return_resource('starships', rand(1..30))
  if starship_info.key?('name')
    starship_info['name']
  else
    return_starship()
  end
end

character1 = return_character()
character2 = return_character()
starship = return_starship()

puts("#{character1} and #{character2} cruising around in their #{starship}")