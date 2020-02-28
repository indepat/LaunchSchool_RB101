def joinor(hash, separator = ', ' , last_element = 'or')
  array = hash.keys
  string = ""
  index = 0
 
loop do
    if array.empty?
      nil
    elsif array.size == 1
      string << "#{last_element} " + array[index].to_s
    else
    string << array[index].to_s + "#{separator}"
    end
    array.delete_at(index)
  break if array.size == 0
  end
  string
end

joinor([1, 2])
joinor([1, 2, 3]) 
joinor([1, 2, 3], '; ') 
joinor([1, 2, 3], ', ', 'and')