class Node
  attr_accessor :distance, :duration, :timestamp, :nxt
  def initialize(arg, nxt)
    #initialize object with hash
    arg.each do | name, val |
      instance_variable_set("@#{name}", val) unless val.nil? 
    end
    @next = nxt
  end
end

class Run 
  def initialize(arg)
    @first = Node.new(arg, nil)
  end
  
  def self.log(arg) 
    current = @first
    while current.nxt != nil
      current = current.nxt
    end
    current.nxt = Run.new(arg)
  end
  
  def self.count(week = nil)
    if week.nil?
      3
    end
  end

end

