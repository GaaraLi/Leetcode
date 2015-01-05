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
  SAY_ARRAY = ['11']
  def count_and_say(n)
    say_number(n)
  end

  def say_number(n)
    return SAY_ARRAY[n] if SAY_ARRAY[n]
    str = '1'
    n.times do |pointer|
      str = count_number(str)
      SAY_ARRAY[pointer] = str unless SAY_ARRAY[pointer]
    end
    str
  end

  def count_number(str)
    out_str = ''
    count = 0
    value = str[0]
    str.each_char do |c|
      if value == c
        count = count + 1
      else
        out_str << "#{count}#{value}"
        count = 1
        value = c
      end
    end
    out_str << "#{count}#{value}"
  end
end

class Solution
  include CountAndSay
end
