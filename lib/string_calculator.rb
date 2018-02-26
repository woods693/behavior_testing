class StringCalculator
  
  def self.add(input)
    if input.empty?
      return 0
    else
      #splits the input and maps it into a hash table
      numbers = input.split(",").map {|num| num.to_i}
      numbers.inject(0) { |sum, n| sum + n }
      
      #arr = input.split(",")
      #if arr.length == 1
      #  return input.to_i
      #else
      #  return (arr.first.to_i + arr.last.to_i)
      #end 
    end
  end
end