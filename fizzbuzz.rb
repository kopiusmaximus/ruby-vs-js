require 'pry'

# Let `max_num` be the number that you want to count to.


# In pairs, edit your fizzbuzz code, adding a hash containing keys "fizz", "buzz",
# "fizzbuzz", and "other", each with arrays as values. As you iterate through all
# the numbers from 1 to max_num, add each number to one of the arrays mentioned
# above; numbers divisible by 3 only should go into the "fizz" array, numbers
# divisible by 5 only should go into the "buzz" array, numbers divisible by both
# should go into the "fizzbuzz" array, and numbers divisible by neither should go
# into the "other" array. Finally, once you're done, return the hash as the result
# of fizzbuzz.
#
# num = ARGV[0].to_i
#
# dict = {}
# dict["fizz"] = []
# dict["buzz"] = []
# dict["fizzbuzz"] = []

def fizz_buzz(max_num)
  fb = {
    fizz: [],
    buzz: [],
    fizzbuzz: [],
    other: []
  }

  1.upto(max_num) do |i|
    if (i % 3).zero? && (i % 5).zero?
      fb[:fizzbuzz] << i
    elsif (i % 3).zero?
      fb[:fizz] << i
    elsif (i % 5).zero?
      fb[:buzz] << i
    else
      fb[:other] << i
    end
  end
  return fb
end

binding.pry
''
