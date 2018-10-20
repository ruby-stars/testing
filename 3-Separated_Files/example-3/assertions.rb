def assert_enqual(expected, actual, method)
  if expected == actual
    print_success(method, actual)
  else
    print_failure(method, expected, actual)
  end
end



def assert_not_equal(expected, actual, method)
  if expected != actual
    print_success(method, actual)
  else
    print_failure(method, expected, actual)
  end
end



def assert_bigger_than(expected, actual, method)
  if expected > actual
    print_success(method, actual)
  else
    print_failure(method, expected, actual)
  end
end



def print_success(method, actual)
  puts "Your method '#{method}' returned '#{actual}' as expected."
end

def print_failure(method, expected, actual)
  puts "FAIL! Your method '#{method}' did not return '#{expected}' as expected, but actually returned '#{actual}'."
end
