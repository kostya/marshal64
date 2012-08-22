require File.dirname(__FILE__) + '/spec_helper'

describe Marshal64 do

  it "should dump/load" do
    x = {:args => [1, 2, 3, :a, 'b'], 'queue' => :name}
    str = Marshal64.dump(x)
    str.is_a?(String).should be_true
    
    obj = Marshal64.load(str)
    obj.is_a?(Hash).should be_true
    obj.should == x    
  end                  

  it "should encode/decode" do
    x = {:args => [1, 2, 3, :a, 'b'], 'queue' => :name}
    str = Marshal64.encode(x)
    Marshal64.decode(str).should == x
  end
  
  it "work on large data" do
    data = {}
    10000.times{|i| data["#{i}".to_sym] = [i, "i_#{i}"]}

    s = Marshal64.dump(data)
    Marshal64.load(s).should == data
  end
  

end
