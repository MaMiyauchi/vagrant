 require 'test_helper' 
 
 
 class GemMinitesttest < Minitest::Test 
   def setup 
     @main = ::GemMinitest::Main.new 
   end 
 
 
   def test_that_it_has_a_version_number 
     refute_nil ::GemMinitest::VERSION 
   end 
 
 
 
   def test_odd? 
     assert @main.odd?(1), '1 is odd' 
     refute @main.odd?(2), '2 is not odd' 
     assert @main.odd?(3), '3 is odd' 
     assert @main.odd?(101), '101 is odd' 
    refute @main.odd?(222), '222 is not odd' 
     assert @main.odd?(333), '333 is odd' 
  end 
 
 
   def test_check_number? 
     assert @main.check_number?(2222), '2222 is valid' 
     assert @main.check_number?(9998), '9998 is valid' 
     refute @main.check_number?(0002), '0002 is invalid' 
     refute @main.check_number?('002a'), '002a is invalid' 
   end 
 
 
   def test_enough_length? 
     refute @main.enough_length?('is'), 'is is invalid' 
     refute @main.enough_length?(123), '123 is invalid' 
     assert @main.enough_length?('egg'), 'egg is valid' 
     assert @main.enough_length?('good'), 'good is valid' 
     assert @main.enough_length?('computer'), 'computre is valid' 
     refute @main.enough_length?('brainfuck'), 'brainfuck is invalid' 
   end 
 
 
   def test_divide 
     assert_equal '1',@main.divide(2,2), '2/2 is ok' 
     assert_equal '2',@main.divide(8,4), '8/4 is ok' 
     assert_raises(ZeroDivisionError) {@main.divide(1,0)} 
   end 

 
   def test_fizz_buzz 
     assert @main.fizz_buzz(1),  '1 -> (true)' 
     assert_equal 'Fizz',@main.fizz_buzz(3),  '3 -> Fizz' 
     assert_equal 'Buzz',@main.fizz_buzz(5),  '5 -> Buzz' 
     assert_equal 'FizzBuzz',@main.fizz_buzz(15),  '15 -> FizzBuzz' 
 
end 
 
end 
