class Run 
  attr_accessor :distance, :duration, :timestamp, :nxt
  $a = Array.new
  def initialize(arg)
    #initialize object with hash
    arg.each do | name, val |
      instance_variable_set("@#{name}", val) unless val.nil?
    end

  end

  def self.log(arg) 
    $a << Run.new(arg)
  end
  
  def self.count(week = nil)
    if week.nil?
      $a.count
    else
      $a.count
      #$a.each do |entry|
      #  if entry.timestamp == value
      #    
      #end
    end
  end

end

