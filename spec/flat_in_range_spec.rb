require 'spec_helper'

describe Spree::Calculator::FlatInRange do
  let(:calculator) { Spree::Calculator::FlatInRange.new }

  before :each do
    calculator.stub :preferred_lower_boundry => 10.0
    calculator.stub :preferred_upper_boundry => 50.0
    calculator.stub :preferred_amount => 10.0
  end

  it "should have a description method" do
    Spree::Calculator::FlatInRange.should respond_to(:description)
  end

  context "#compute" do
    it "should return amount within the range" do
      order = mock_model Spree::Order, :line_items => [
          mock_model(Spree::LineItem, :amount => 10),
          mock_model(Spree::LineItem, :amount => 20)
        ] 
      calculator.compute(order).should == "10.0"
    end

    it "should return zero above the range" do
      order = mock_model Spree::Order, :line_items => [
          mock_model(Spree::LineItem, :amount => 10),
          mock_model(Spree::LineItem, :amount => 50)
        ]
      calculator.compute(order).should == "0.0"
    end

    it "should return zero below the range" do
      order = mock_model Spree::Order, :line_items => [
          mock_model(Spree::LineItem, :amount => 2),
          mock_model(Spree::LineItem, :amount => 1)
        ]
      calculator.compute(order).should == "0.0"
    end

    it "should include the lower range edge as 'witin the range'" do
      order = mock_model Spree::Order, :line_items => [
          mock_model(Spree::LineItem, :amount => 5),
          mock_model(Spree::LineItem, :amount => 5)
        ]
      calculator.compute(order).should == "10.0"
    end
    it "should include the upper range edge as 'witin the range'" do
      order = mock_model Spree::Order, :line_items => [
          mock_model(Spree::LineItem, :amount => 40),
          mock_model(Spree::LineItem, :amount => 10)
        ]
      calculator.compute(order).should == "10.0"
    end
  end
end
