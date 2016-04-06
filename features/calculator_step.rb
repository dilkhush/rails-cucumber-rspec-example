require 'cucumber/rails'
require_relative '../calculator'

Given(/^Should have calculator object$/) do
  @calc = Calculator.new
end

Given(/^I have enters (\d+) and (\d+) into the calculater$/) do |arg1, arg2|
  @sum = @calc.add(arg1, arg2)
end

Then(/^the result should be (\d+) on the screen$/) do |arg1|
  @sum.should == 120
end

Given(/^I have enters (\d+) into the calculater$/) do |arg1|
  @sum = @calc.add(arg1)
end

Then(/^the result should be (\d+)$/) do |arg1|
  @sum.should == 50
end

Given(/^I have entered (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calc.multiply(arg1, arg2)
end

Then(/^result should be (\d+)$/) do |arg1|
  @result.should == 200
end
