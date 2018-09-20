require 'countries'
require './report'

puts "What country do you want a report on?"

country_name = gets.strip

country = ISO3166::Country.find_country_by_name(country_name)

if country
  puts "The flag for #{country.name} is #{country.emoji_flag}"
  Report.new(country).run
  puts "For a full report, open country_report.pdf"
else
  puts "Could not find a country called #{country_name}"
end
