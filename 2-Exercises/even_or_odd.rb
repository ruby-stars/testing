def even_or_odd(number)
  return "Strings are not OK" unless number.kind_of? Numeric
  return "neither" if number == 0
  return "float" if number.kind_of? Float

  if (number % 2) == 0
    "even"
  else
    "odd"
  end
end

cases = {
  0      => "neither",
  0.5    => "float",
  -1     => "odd",
  1      => "odd",
  4      => "even",
  9      => "odd",
  1.2    => "float",
  "Alex" => "Strings are not OK"
}

cases.each do |number, expectation|
  result = even_or_odd(number)

  if expectation == result
    puts "Expectation #{expectation} for #{number} was met"
  else
    puts "Expectation #{expectation} for #{number} was not met. Output: #{result}"
  end
end
