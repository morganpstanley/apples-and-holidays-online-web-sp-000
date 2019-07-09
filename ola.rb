require 'pry'

holiday_hash =
  {
     :winter => {
       :new_years => ["Party Hats"]
     },
      :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }


   def all_supplies_in_holidays(holiday_hash)
     # iterate through holiday_hash and print items such that your readout resembles:
     # Winter:
     #   Christmas: Lights, Wreath
     #   New Years: Party Hats
     # Summer:
     #   Fourth Of July: Fireworks, BBQ
     # etc.

     holiday_hash.each do |season, holidays|
       puts "#{season.to_s.capitalize}:"
       holidays.each do |holiday, supplies|
         if holiday.to_s.include?"_"
           new_holiday = holiday.to_s.split"_"
           new_holiday.each do |name_array|
             name_array.capitalize!
           end
           holiday = new_holiday.join(" ")
         else
           holiday = holiday.to_s.capitalize!
           binding.pry
         end
         puts "  #{holiday}: #{supplies.join(", ")}"
       end
     end
   end

   all_supplies_in_holidays(holiday_hash)
