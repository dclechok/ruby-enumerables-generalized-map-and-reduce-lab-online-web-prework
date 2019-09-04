def map(source_array)
  c = source_array.length
  new_array = []
  c.times do |i|
    new_array.push(yield(source_array[i])) 
  end
	new_array
end




def reduce(source_array, start_val = nil)
  if start_val
    total = start_val
    x = 0
  else
    total = source_array[0]
    x = 1
  end
    
  c = source_array.length
  c.times do |i|
    total = yield(total, source_array[x])
  end
  total
end