require_relative 'assertions_2'
require_relative 'method_2'

cases = {
  101       => 101,
  9         => "Fizz",
  30        => "FizzBuzz",
  1_000_000 => "Buzz",
  "kaja"    => "No strings please!"
}

cases.each do |number, expectation|
  actual = fizzbuzz(number) # Actual method call

  assert_equal(expectation, actual, "your method named fizzbuzz(#{number})") # Check if they are equal
end
