require 'json'
require 'open-uri'
require 'byebug'


# puts "What's your Github username?"
# username = gets.chomp

# url = "https://api.github.com/users/#{username}"

# user = open(url).read

# user = JSON.parse(user)

# puts "#{username}, you have #{user["public_repos"]} public repos!"



# Trump Api

puts "What's your name?"
name = gets.chomp

url = "https://api.whatdoestrumpthink.com/api/v1/quotes/personalized?q=#{name}"

json = open(url).read

trump = JSON.parse(json)



puts "#{trump["message"]}"
