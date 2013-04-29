#for i in 0...100
#puts i%3==0 ? (i%5==0 ? "FizzBuzz" : "Fizz") : (i%5==0 ? "Buzz" : i)
#end

def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

def fizzbuzz(number)
token = "" 
number%3==0 ? number%5==0 ? token << "FizzBuzz" : token << "Fizz" : number%5==0 ? token << "Buzz" : token = number
return token
end

1.upto(100) do |number|
  puts fizzbuzz(number)
end


# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

