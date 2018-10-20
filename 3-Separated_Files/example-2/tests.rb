require_relative 'assertions'
require_relative 'method'

cases = {
  101       => 101,
  9         => "Fizz",
  30        => "FizzBuzz",
  1_000_000 => "Buzz",
  "kaja"    => "No strings please!"
}

cases.each do |number, expectation|
  actual = fizzbuzz(number) # Actual method call

  assert_equal(expectation, actual, "fizzbuzz(#{number})") # Check if they are equal
end
