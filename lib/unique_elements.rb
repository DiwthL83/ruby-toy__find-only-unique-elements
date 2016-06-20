# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)

	counts = Hash.new 0
	arr.each do |ele|
		counts[ele] += 1
	end
	
	counts.delete_if {|key, value| value > 1 }
	result = counts.keys #Array returned with keys for non-dupe values
	puts result
end
