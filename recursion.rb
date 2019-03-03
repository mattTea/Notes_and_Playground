# https://makersacademy.teachable.com/courses/256825/lectures/3989148

# def factorial(n)
#   return 1 if n < 2
#   factorial(n-1) * n
# end

# OR

# def factorial(n)
#   n < 2 ? 1 : factorial(n-1) * n
# end

# puts factorial(5)


# To make this visble...

def factorial(n)
  puts "Computing factorial(#{n})"
  if n < 1
    puts "factorial(#{n}) == 1 since #{n} < 1"
    return 1
  else
    puts "let's compute factorial(#{n}) == #{n} * factorial(#{n-1})"
  end
  result = factorial(n-1) * n
  puts "So, factorial(#{n}) == factorial(#{n-1}) * #{n} == #{result}"
  result
end

factorial(5)

=begin

Above outputs...
Computing factorial(5)
let's compute factorial(5) == 5 * factorial(4)
Computing factorial(4)
let's compute factorial(4) == 4 * factorial(3)
Computing factorial(3)
let's compute factorial(3) == 3 * factorial(2)
Computing factorial(2)
let's compute factorial(2) == 2 * factorial(1)
Computing factorial(1)
let's compute factorial(1) == 1 * factorial(0)
Computing factorial(0)
factorial(0) == 1 since 0 < 1
So, factorial(1) == factorial(0) * 1 == 1
So, factorial(2) == factorial(1) * 2 == 2
So, factorial(3) == factorial(2) * 3 == 6
So, factorial(4) == factorial(3) * 4 == 24
So, factorial(5) == factorial(4) * 5 == 120


QUESTION:
Why does it loop through lines 20-26 5 times before moving onto line 27?

ANSWER:
The above execution trace shows how the code works.
As you can see from the output, first the code is folding until
it reaches the base case and then it's unfolding. So first,
the problem is broken down into smaller pieces and then,
once the base case is reached, it's used to compute all other values.

=end