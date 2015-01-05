require_relative 'count_and_say'

s = Solution.new
a = Time.now
s.count_and_say(18)
f = Time.now
puts "---------#{f-a}"
s.count_and_say(20)
b = Time.now
puts "---------#{b-a}"
s.count_and_say(21)
c = Time.now
puts "---------#{c-b}"

s.count_and_say(19)
d = Time.now
puts "---------#{d-c}"
