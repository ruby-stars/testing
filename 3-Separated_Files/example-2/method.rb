def fizzbuzz(number)
  return "No strings please!" unless number.kind_of? Numeric

  if (number % 3 == 0) && (number % 5 == 0)
    'FizzBuzz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 3 == 0
    'Fizz'
  else
    number
  end
end
