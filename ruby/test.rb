the_file='test.txt'
h = Hash.new
f = File.open(the_file, "r")
 puts "----COUNT----"
f.each_line { |line|
  words = line.split
  words.each { |w|
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  }
  
 
  if line.size > 10 && line.size < 20
		puts line
	else
		puts "more than 20 or less than 10"
		end
	
  
}
puts "----------"
# sort the hash by value, and then print it in this sorted order
puts "---- UNIQUE ----"
h.sort{|a,b| a[0]<=>b[0]}.each { |elem|
  puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
}
puts "EOF"