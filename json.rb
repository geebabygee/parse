require 'json'

filepath    = 'beers.json'

# Parsing the Json, reading from it
serialized_beers = File.read(filepath) #big string
json_beers = JSON.parse(serialized_beers) #hash because I parse with the JSON

# p json_beers["beers"][0]['name']

json_beers["beers"].each do |beer|
  p beer #gives back the hash
  p beer['name']
end

puts "What's the name of the beer?"
name = gets.chomp

puts "What's the appearance of the beer?"
appearance = gets.chomp

puts "What's the origin of the beer?"
origin = gets.chomp

beer = {
  name: name,
  origin: origin,
  appearance: appearance
}

json_beers["beers"] << beer

# Saving to JSON - From Ruby to Json
File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(json_beers))
end

# require 'json'

# # TODO - let's read/write data from beers.json
# filepath    = 'beers.json'

# # File.read => String
# serialized_beers = File.read(filepath)

# # JSON.parse => Hash
# json_beers = JSON.parse(serialized_beers)

# # ASK USER FOR A NEW BEER
# puts "What's the name of the beer?"
# name = gets.chomp

# puts "What's the appearance of the beer?"
# appearance = gets.chomp

# puts "What's the origin of the beer?"
# origin = gets.chomp

# beer = {
#   name: name,
#   origin: origin,
#   appearance: appearance
# }

# json_beers["beers"] << beer

# # JSON.generate serializes the hash
# File.open(filepath, 'wb') do |file|
#   file.write(JSON.generate(json_beers))
# end
