# require 'net/http'
# require 'json'

# url = "https://swapi.dev/api/starships/#{rand(1..30)}/"
# uri = URI(url)
# response = Net::HTTP.get(uri)
# varr = JSON.parse(response)
# puts varr
# # puts uri.class

# a1 = [
#     'blue',
#     'red',
#     'green'
# ]

h1 = {
    'color'=>'blue',
    'shape'=>'circle',
}

puts h1.key?('colorr')