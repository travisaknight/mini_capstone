require "http"

puts "Welcome to my Plant Terminal. Enter a command to view some of our goods."

while true
  puts "Press [1] for an individual product."
  puts "Press [2] for a list of all products"
  puts "Enter 'quit' when done."

  input = gets.chomp.downcase

  if input == "1"
    response = HTTP.get("http://localhost:3000/api/single_product")
    product = response.parse
    pp product
  elsif input == "2"
    response = HTTP.get("http://localhost:3000/api/products")
    products - response.parse
    pp products
  elsif input == "quit"
    puts "See ya later!"
    break
  else
    puts "Please enter a valid response."
  end
end
