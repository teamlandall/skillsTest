#Function takes a random number from input and determines how many "holes" that number has.
#Holes are defined by the hole in the digit as its displayed. 
#4, 6, 8, 9, 0 have holes. 1, 2, 3, 5, 7 do not. 
#Splits the input into an array of strings then only keeps the numbers with holes. 
#Switch statement loops through the valid holes array and increments i by the number of holes
#in the original number. Prints i to the screen.



def solvePuzzle(num)
  #convert input to an array where digits are strings.
  to_string = num.to_s.split('')
	
  #iterate through the string array, keeping only the numbers with holes.
  holes = to_string.keep_if { |a| a == "4" ||  a == "6" ||  a == "8" || a == "9" || a == "0" }
	
  #iterate through holes array with switch statement. 
  #Assign correct values and increment i by that value. 
  i=0
  holes.each do |x| 
    case x
      when "4"
        i += 1
      when "6"
        i += 1
      when "8"
        i += 2
      when "9"
        i += 1
      when "0"
       i += 1
      else
        print "something"
    end
  end

  #returns number of holes from input.
  print i
end

solvePuzzle(1288)

