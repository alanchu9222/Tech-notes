# dictionary (hash) - record and key
dial_book = {
  "camberwell" => "3124",
  "brunswick" => "3050",
  "fitzroy" => "3020",
  "box hill" => "3320",
  "blackburn" => "3420",
  "belgrave" => "3530",
  "lilydale" => "3620",
  "ringwood" => "3520",
  "glenferrie" => "3120",
  "richmond" => "3024"
}

# show the keys for all entries in the hash
def get_city_names(somehash)
  somehash.keys
end

# show the value for a given key in the hash
def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  # check if array contains the string provided
  if dial_book.include?(prompt)
    # Call get_area_code to return the area_code
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end
