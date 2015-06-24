#Function takes an input of numbers. The first number indicates how many "triangles (sets of 3)"
#there are in the input. The code puts the input into an array, drops the first number
#leaving a multiple of 3. Then it splits the remaining input into grouped arrays of 3, for each 
#triangle. It then checks each triangle for Equilateral, Isoceles or neither. 
#It then prints that output to the screen with each triangle getting its own line.

def triangle_test(x)
	#split input into array
  array = x
	
  #delete first array so only dealing with triangle sides
  array.delete_at(0)
    
  #split array into smaller array of arrays of 3 sides each
  triangle_arrays = array.each_slice(3).to_a 

  #iterate through each "triangle"
  triangle_arrays.each do |a, b, c|

  if (a == b) && (a == c)
    puts "Equilateral"
  elsif (a == b) || (a == c) || (b == c)
    puts "Isoceles"
  else
    puts "None of these"
  end

end
    
end



input = 4, 36, 36, 30, 47, 8, 60, 46, 96, 90, 86, 86, 86, 90, 90, 90, 2, 34, 35345
triangle_test(input)