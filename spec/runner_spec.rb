require "runner"
require "pry"
require 'pry-nav'
describe Run do
  describe "attributes" do
    subject do
      Run.new(:distance => 2,
              :duration => 30.2,
              :timestamp => "02/27/2018")
      
    end
    it { is_expected.to respond_to(:distance) }
    it { is_expected.to respond_to(:duration) }
    it { is_expected.to respond_to(:timestamp) }
  end
  
  describe ".count" do
    context "logging 2 runs in first week and 1 more in next" do 
      before(:all) do
        2.times do
          Run.log(:distance => 4,
                  :duration => 50.2,
                  :timestamp => "03/07/2018" )
        end
        
        Run.log(:distance => 2,
                :duration => 35.2,
                :timestamp => "03/14/2018")
      end
      
      context "given empty search week" do
        it "returns all 3 runs" do 
          expect(Run.count).to eql(3)
        end
      end
      
      context "given the day 03/07/2018 " do
        it "returns 2" do
          expect(Run.count(:week => "03/07/2018")).to eql(2)
        end
      end
      
    end
  end
end
