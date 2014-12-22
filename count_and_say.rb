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

puts Solution.count_and_say(1)
#Solution.say("1")

__END__
f(1) = 1
f(2) = count(f(1)) = 1 * 1
f(3) = count(f(2)) = 2 * 1
f(4) = 
f(n) = count(f(n-2)) = 1 * 2 + 1 * 1

