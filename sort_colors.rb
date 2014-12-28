# ++
# Sort Colors
# Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.

# Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

# Note:
# You are not suppose to use the library's sort function for this problem.
# ++
class Solution
  def self.sort_color(colors)
    count = {}
    len = colors.length - 1
    for i in 0..len
      if colors[i] == "0"
        count["0"] ||= 0
        count["0"] += 1
      elsif colors[i] == "1"
        count["1"] ||= 0
        count["1"] += 1
      elsif colors[i] == "2"
        count["2"] ||= 0
        count["2"] += 1
      end
    end
    for i in 0..(count["0"] - 1)
      colors[i] = "0"
    end

    for i in count["0"]..(count["0"] + count["1"] - 1)
      colors[i] = "1"
    end

    for i in (count["0"] + count["1"])..len
      colors[i] = "2"
    end
  end
end
