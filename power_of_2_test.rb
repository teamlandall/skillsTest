#Function takes an array and tests each number to see if it's a power of two.
#In a new array, we return 1 if it is, 0 if it is not. 

def  countTwos( arr) 
	result = []
	
	arr.each do |x|
		if x & (x-1) == 0
			result.push(1)
    else
      result.push(0)
    end
  end
  print result
end

input = [1024, 2048, 1048576, -1, 0.023]
countTwos(input)