require_relative 'count_and_say'

describe CountAndSay do
  before do
    @s = Solution.new
    @hash_record = {}
    @hash_record["0"] = 0
    @hash_record["1"] = 1
    @hash_record["2"] = 2
    @number = 122333
  end
  it "should count the number in the str" do
    expect(@s.count_number('122333')["1"]).to equal(1)
    expect(@s.count_number('122333')["2"]).to equal(2)
    expect(@s.count_number('122333')["3"]).to equal(3)
  end

  it "shuld say the right result" do
    expect(@s.say_number(@hash_record)).to eq("1122")
  end

  it "should out put the right result" do
    expect(@s.count_and_say(@number)).to eq("112233")
  end
end  
