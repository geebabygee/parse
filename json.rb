require 'json'

filepath    = 'beers.json'

serialized_beers = File.read(filepath)

beers = JSON.parse(serialized_beers) #hash

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

beers["beers"] << beer

# JSON.generate serializes the hash
File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end
