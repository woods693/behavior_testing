require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "return a zero" do 
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  
    context "given 10" do
      it "returns 10" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end
    
    context "given two numbers" do
      context "2,4" do
        it "returns 6" do 
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end
      
      context "3,7" do
        it "returns 10" do
          expect(StringCalculator.add("3,7")).to eql(10)
        end
      end
    end
  end
  
  describe ".minus" do
    context "given one input" do
      context "given empty string" do
        it "returns 0" do
          expect(StringCalculator.minus("")).to eql(0) 
        end
      end
      
      context "given the value 20" do
        it "returns 20" do
          expect(StringCalculator.minus("20")).to eql(20)
        end
      end
    end
    
    context "given 2 inputs" do
      context "given 10,4" do
        it "returns 6" do
          expect(StringCalculator.minus("10,4")).to eql(6)
        end
      end
    
      context "given 4,8" do
        it "returns -4" do
          expect(StringCalculator.minus("4,8")).to eql(-4)
        end
      end
    end
    
  end
  
end