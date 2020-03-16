monthofbirth = false
while !monthofbirth 
  puts "Which month were you born in?"
  month = gets.chomp.downcase!

  arrmonth= ["january", "february","march","april", "may", "june", "july","august", "september", "october", "november", "december"]

  if arrmonth.include?(month)
    monthofbirth = true
    
  end
end

dob = false
while !dob
  puts "Which day were you born?"
  date = gets.chomp.to_i
  if date <= 31 && date >= 1
    dob = true
    end
end

if month == "march" 
   if date > 20 
    horoscope = "Aries" 
   else 
    horoscope = "March"
  end

elsif month == "april"
  if date > 20
    horoscope = "Taurus"
  else
    horoscope = "Aries"
  end

elsif month == "may"
  if date > 21
  horoscope = "Gemini"
  else
  horoscope = "Taurus"
  end

elsif month == "june"
  if date > 21
    horoscope = "Cancer"
  else
    horoscope = "Gemini"
  end

elsif month == "july"
  if date > 23
  horoscope = "Leo"
  else
  horoscope = "cancer"
  end

  elsif month == "august"
    if date > 23
    horoscope = "Virgo"
    else
    horoscope = "Leo"
    end

  elsif month == "september"
    if date > 23
    horoscope = "Gemini"
    else
    horoscope = "Virgo"
    end

elsif month == "october"
    if date > 23
    horoscope = "Scorpio"
    else
    horoscope = "Libra"
    end

  
elsif month == "november"
    if date > 22
    horoscope = "Sagittarius"
    else
    horoscope = "Scorpio"
    end
  
elsif month == "december"
    if date > 22
    horoscope = "Capricorn"
    else
    horoscope = "Sagittarius"
    end
  
elsif month == "january"
    if date > 20
    horoscope = "Aquarius"
    else
    horoscope = "Capricorn"
    end

elsif month == "february"
    if date > 18 
    horoscope = "Pisces"
    else
    horoscope = "Aquarius"
    end
end

puts "Your zodiac sign is #{horoscope}."



