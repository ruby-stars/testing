require_relative 'assertions'
require_relative 'method'

cases = {
  [1,2,3,4,5] => 5, # Best case scenario
  [6,7,8,9,0] => 1, # Bad case scenario
  "blah"      => "No strings please"
}

cases.each do |input, expectation|
  actual = largest(input) # [1,2,3,4,5]

  if actual == expectation
    puts "They are the same"
  else
    puts "They are not the same"
  end
end
