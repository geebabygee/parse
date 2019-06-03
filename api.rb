require 'json'
require 'open-uri'
require 'byebug'


puts "What's your Github username?"
username = gets.chomp

url = "https://api.github.com/users/#{username}"

user = open(url).read

user = JSON.parse(user)

puts "#{username}, you have #{user["public_repos"]} public repos!"
