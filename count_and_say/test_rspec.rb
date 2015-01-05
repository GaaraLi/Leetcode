require_relative 'count_and_say'
require 'pry'

describe CountAndSay do
  before do
    @s = Solution.new
    # @number = 1
  end
  it "should be right when the str started from 1 or bigger" do
    expect(@s.count_number('1')).to eq('11')
    expect(@s.count_number('11')).to eq('21')
    expect(@s.count_number('21')).to eq('1211')
  end

  it "should return when the say_array have the result" do
    CountAndSay::SAY_ARRAY[4] = '1111'
    expect(@s.say_number(4)).to eq('1111')
  end

  it "should return the right number when SAY_ARRAY did not have the result" do
    expect(@s.say_number(3)).to eq('1211')
  end

  it 'should output the right result' do
    expect(@s.count_and_say(3)).to eq('1211')
  end
end  
