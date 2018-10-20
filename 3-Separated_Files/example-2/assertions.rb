def assert_equal(expected, actual, method)
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

private

def print_success(method, actual)
  puts "#{method} returned #{actual} as expected."
end

def print_failure(method, expected, actual)
  puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
end
