class CartesianProduct
  include Enumerable

  def initialize(arr1, arr2)
  	
  	@arr1 = arr1
  	@arr2 = arr2
  	
  end
  
  def each
    
    unless @arr1.empty? && @arr2.empty?
      
      resulting_array = []
      @arr1.each do |a1|
      	resulting_array << @arr2.each { |a2| yield [a1] << a2 }
      
      end
      
    end
    
  end
  
end
