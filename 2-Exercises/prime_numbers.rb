def check_if_prime(x)
  return false if x < 2

  (2...x).each do |i|
    return false if x % i == 0
  end

  true
end

cases = {
  7    => true,
  15   => false,
  33   => false,
  1093 => true,
  1    => false,
  0    => false
}

cases.each do |number, expectation|
  result = check_if_prime(number)

  if expectation == result
    puts "Expectation #{expectation} for #{number} was met"
  else
    puts "Expectation #{expectation} for #{number} was not met #{result}"
  end
end
