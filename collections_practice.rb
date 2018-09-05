
# your code goes here

def begins_with_r(array)
	array.each do |word|
		if !word.start_with?("r")
			return false
		end
	end
	return true
end

def contain_a(array)
	data = []
	array.each{ |word| word.include?("a") ? data << word : false}
	data
	
end

def first_wa(array)
	array.each do |word|
		if word.to_s.start_with?("wa")
			return word
		end
	end
	nil
	
end

def remove_non_strings(array)
	array.delete_if {|word|  word.class != String} 
	array

end

def count_elements(data)
	counts = []
	#iterate over hashs in data
	data.each do |hash|

		#add first value if counts empty
		if counts.size == 0 
			counts << { :count => 1, hash.keys[0] => hash.values[0]}
		else 
			#iterate over counts
			counts.each do |count|
				#if count exists for hash, add to count
				if count.has_value?(hash.values[0])
					count[:count] += 1
				#else create new count for new hash
				else
					counts << {:count => 1, hash.keys[0] => hash.values[0]}
					#break to not count twice
					break
				end
			end
		end
	end
	counts
	
end

def merge_data(keys, data)
	new_array = []
	key_count = 0
	old_hash = data[0]
	while key_count < keys.size 
		nested_hash = old_hash.values[key_count]

		key = keys[key_count].keys[0]
		value = keys[key_count].values[0]

		nested_hash[key] = value
		new_array << nested_hash
		key_count += 1
	end

	new_array
end

def find_cool(data)
	cool_people = []
	data.each do |hash|
		if hash.has_value?("cool")
			cool_people << hash
		end
	end
	cool_people
end

def organize_schools(schools)
	organized = {}
	schools.each do |school_arr|
		school = school_arr[0]
		location = school_arr[1].values[0]
		if organized.key?(location)
			organized[location] << school
		else
			organized[location] = [school]
		end

	end
	organized
end

