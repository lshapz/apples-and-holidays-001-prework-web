require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

   holiday_hash[:winter][:christmas] << supply
   holiday_hash[:winter][:new_years] << supply
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day] << supply
end
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash[season][holiday_name] = supply_array
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
poop = []
holiday_hash[:winter].collect do |holiday, supply|
  poop << supply 
end 
return poop.flatten.to_s


end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
   holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
holiday.each do |holidays, supple|
  puts "  #{holidays.to_s.split('_').map {|w| w.capitalize }.join(' ')}: #{supple.join(", ")}"

end


end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ" 
array = []

holiday_hash.each do |name, thing|
  thing.each do |thing2, thing3|
    if thing3.include?("BBQ")
      array << thing2
    end
  end
end
 array

end







