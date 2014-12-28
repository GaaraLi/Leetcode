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
class Solution
  def self.count_and_say(n)
    i = 0
    ret = "1"
    while i < n
      ret =  say(ret)
      i += 1
    end
    return ret
  end

  private
  def self.say(str)
    ret  = ""
    len = str.length
    i = 0
    key = []
    count = []
    j = 0
    key[j] = str[i]
    count[j] = 0
    while i < len
      if str[i] == key[j]
        count[j] += 1
      else
        j += 1
        key[j]  = str[i]
        count[j] = 1
      end
      i += 1
    end
    key.length.times do |k|
      ret += "#{count[k]}#{key[k]}"
    end
    return ret
  end
end
