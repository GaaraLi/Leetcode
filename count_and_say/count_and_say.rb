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
  def count_and_say(n)
    str = n.to_s
    say_number(count_number(str))
  end

  def count_number(str)
    count_record =  {}
    0.upto(9) do |n|
      count_record[n.to_s] = str.count(n.to_s)
    end
    count_record
  end

  def say_number(record_hash)
    str = ''
    record_hash.delete_if{|k,v| v == 0}
    record_hash.each do |k,v|
      str << "#{v}#{k}"
    end
    str
  end
end

class Solution
  include CountAndSay
end