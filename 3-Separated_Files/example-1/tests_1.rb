require_relative 'method_1'

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
