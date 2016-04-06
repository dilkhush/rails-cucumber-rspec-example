require 'spec_helper'
require_relative '../calculator'

describe Calculator do
  let (:calc) { Calculator.new}
  describe '#add' do
    it "should return the sum of 2 numbers" do
      a, b = 10, 20
      sum = calc.add(a,b)
      sum.should == 30
    end
    it "should not return the product of 2 numbers" do
      calc.add(30,40).should_not == 1200
    end
  end

  describe '#add' do
    it "should return the sum of 2 numbers" do
      a, b = 10, 20
      sum = calc.multiply(a,b)
      sum.should == 200
    end

    it "should not return the product of 2 numbers" do
      calc.multiply(30,40).should_not == 21212
    end
  end
end