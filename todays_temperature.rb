#todays_temperature_f = 23
#celsius_flag = "true"

puts "Enter your temperature in Farenheit"
todays_temperature_f = gets.chomp()
todays_temperature_f = todays_temperature_f.to_i

puts "Would you like to see the temperature output in Celsius or Farenheit?"
celsius_flag = gets.chomp()
celsius_flag = celsius_flag.downcase
 
case todays_temperature_f
	when -150...0 
		thoughts = "Brr!"
	when 0...15 
		thoughts = "Get back inside!"
	when 15...30 
		thoughts = "Hoping for a snow day."
	when 30...45 
		thoughts = "Not too bad."
	when 45...60 
		thoughts = "Nice sweater weather."
	when 60...75 
		thoughts = "Sounds great!"
	when 75...90 
		thoughts = "Ah, summer."
	else 
		thoughts = "That's wicked hot."
end

if celsius_flag.eql?("celsius")
	todays_temperature_c = (todays_temperature_f - 32)*5/9
	response = "Hello, the temperature is #{todays_temperature_c}°C. \nOur thoughts: "
else 
	response = "Hello, the temperature is #{todays_temperature_f}°F. \nOur thoughts: "
end

puts "==================================\n"
puts "Welcome to Ruby Weather Center\n"
puts "Written by Clare Lynch\n"
puts "==================================\n\n"

puts response + thoughts
puts "\n"

=begin
if todays_temperature_f < 0 
	puts response + "Brr!"
elsif todays_temperature_f < 15
	puts response + "Get back inside!"
elsif todays_temperature_f < 30
	puts response + "Hoping for a snow day."
elsif todays_temperature_f < 45
	puts response + "Not too bad."
elsif todays_temperature_f < 60
	puts response + "Nice sweater weather."
elsif todays_temperature_f < 75
	puts response + "Sounds great!"
elsif todays_temperature_f < 90
	puts response + "Ah, summer."
else 
	puts response + "That's wicked hot."
end
=end
