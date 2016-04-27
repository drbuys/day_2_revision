require 'date'

def return_10()
  return 10
end

def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def length_of_string( test_string )
  return test_string.length
end

def join_string( string_1, string_2 )
  return string_1 + string_2
end

def add_string_as_number( num_1, num_2 )
  return num_1.to_i + num_2.to_i
end

def number_to_full_month_name( num )
  case num
  when 1
    return "January"
  when 3
    return "March"
  when 9
    return "September"
  end

  # month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  # num = num - 1
  # return month[num]
end

def number_to_short_month_name( num )
#   case num
#   when 1
#     return "Jan"
#   when 3
#     return "Mar"
#   when 9
#     return "Sep"
#   end
#
#   # month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
#   # num = num - 1
#   # return month[num].slice(0..2)

  return number_to_full_month_name(num).slice(0..2)

end

def volume_of_cube( num )
  return num ** 3
end

def volume_of_sphere( num )
  return ((4.0 / 3.0) * Math::PI * (num ** 3)).round(1)
end

def days_until_christmas (date)
  christmas = Date.new(2016,12,25)
  return christmas - date
end

# def days_until_christmas()
#   today = Date.today
#   christmas = Date.new(today.year,12,25)
#   sleeps = (christmas - today.to_i)
#   return sleeps
# end

def age_of_person ( dob )
  today = Date.today
  age = today.year - dob.year
  birthday_passed = today.month > dob.month || (today.month == dob.month && dob.day > today.day)
  age -= 1 unless birthday_passed
  return age
    #return ((Date.today - dob).to_i / 365)
end
