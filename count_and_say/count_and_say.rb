# ++
# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...
#
# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth sequence.
#
# Note: The sequence of integers will be represented as a string.
#
# ++

module CountAndSay
  SAY_ARRAY = []
  def count_and_say(n)
    puts say_number(n)
  end

  def say_number(n)
    return SAY_ARRAY[n] if SAY_ARRAY[n]
    # str = SAY_ARRAY.last unless SAY_ARRAY[n]
    str = '1'
    n.times do |pointer|
      str = count_number(str)
      SAY_ARRAY[pointer] = str unless SAY_ARRAY[pointer]
    end
    str
  end

  def count_number(str)
    out_str = ''
    return "11" if str == '1'
    str_array = str.split(//)
    n = 0
    count = 1
    value = str_array[n]
    (str_array.length-1).times do
      if str_array[n] == str_array[n+1]
        count = count + 1
      else
        out_str << "#{count}#{value}"
        count = 1
        value = str_array[n+1]
      end
      n = n + 1
    end
    out_str << "#{count}#{value}"
    out_str
  end

  private

end

class Solution
  include CountAndSay
end

# Output examples
# s = Solution.new
# 6.times do |n|
#   s.count_and_say(n)
# end