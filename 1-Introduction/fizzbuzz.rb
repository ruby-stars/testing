def fizzbuzz(number)
  return "No strings please!" if not number.class == Integer

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

cases = {
  101       => 101,
  9         => "Fizz",
  30        => "FizzBuzz",
  1_000_000 => "Buzz",
  "kaja"    => "No strings please!"
}

cases.each do |number, expectation|
  result = fizzbuzz(number)

  if expectation == result
    puts "Expectation #{expectation} for #{number} was met"
  else
    puts "Expectation #{expectation} for #{number} was not met #{result}"
  end
end
