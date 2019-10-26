#---- TIMEZONE CHALLENGE ----#
time = Time.new
puts "Current time is #{time.strftime("%I:%M %p")} "
puts "Enter new timezone :"
timezone = gets.chomp
time_hour = time.strftime("%I").to_i
time_minute = time.strftime("%M").to_i
time_meridian = time.strftime("%p").to_s
time_input_hour = timezone.slice(0..1).to_i
time_input_minute = timezone.slice(3..4).to_i
time_input_meridian = timezone.slice(6..7).to_s
am = "AM"
pm = "PM"

if time_hour < time_input_hour
    time_input_minute = 60
end

if time.strftime("%p") == am and timezone.slice(6..7) == am

    am = 12
    time_hour_dif = (time_hour + am) - (time_input_hour + am)

elsif time.strftime("%p") == pm and timezone.slice(6..7) == pm

    pm = 12
    time_hour_dif = (time_hour + pm) - (time_input_hour + pm)

elsif time.strftime("%p") == am and timezone.slice(6..7) == pm

    am_pm = 24
    hr = 12
    time_hour_dif = ((time_hour + am_pm) - (time_input_hour + am_pm)) - hr

elsif time.strftime("%p") == pm and timezone.slice(6..7) == am  

    pm_am = 24
    hr = 12
    time_hour_dif = ((time_hour + pm_am ) - (time_input_hour + pm_am )) - hr  

end
puts "\n"
puts "System time is  #{time.strftime("%I:%M %p")}"
puts "Input  time is  #{timezone}"
puts "\n"
time_min_dif = time_minute.abs - time_input_minute.abs  
puts "The time difference between the two timezones is #{time_hour_dif.to_i.abs} hour(s):#{time_min_dif.abs.to_i} minute(s)"