# Proc objects are blocks of code that can be bound to a set of local variables. You can think of a proc object as a "saved" block. Procs are a great way of keeping your code DRY. DRY stands for Do not Repeat Yourself.

# def foo(a, b, my_proc)
#   my_proc.call(a, b)
# end

# add = proc { |x, y| x + y }
# sub = proc { |x, y| x - y }
# mul = proc { |x, y| x * y }
# div = proc { |x, y| x / y }

# puts foo(15, 10, add)
# puts foo(15, 10, sub)
# puts foo(15, 10, mul)
# puts foo(15, 10, div)

# The square_of_sum method computes the sum of the elements in an input array and returns the square of the summed elements.

def square_of_sum(my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

my_array = gets.split().map(&:to_i)

proc_sum_array = proc { |my_array|
  sum = 0
  my_array.each do |e|
    sum = sum + e
  end
  sum
}

proc_square_number = proc { |sum|
  sum * sum
}

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
