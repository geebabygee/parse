require 'csv'

filepath    = 'beers.csv'

beers = []
# PARSING (read csv, and turn it into ruby objects)

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  beer = [row['Name'], row['Appearance'], row["Origin"]]
  beers << beer
  puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
end

# ASK USER FOR A NEW BEER
puts "What's the name of the beer?"
name = gets.chomp

puts "What's the appearance of the beer?"
appearance = gets.chomp

puts "What's the origin of the beer?"
origin = gets.chomp

beer = [name,appearance,origin]
beers << beer

# CSV Storing - from ruby to csv
CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << [beer[0], beer[1], beer[2]] # This is ruby - from array
  end
end
