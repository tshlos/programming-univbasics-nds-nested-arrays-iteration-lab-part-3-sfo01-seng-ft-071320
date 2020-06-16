def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  
  
    outer_index = 0
    new_string = ""

    while outer_index < src.length do
        inner_index = 0

        while inner_index < src[outer_index].length do

            value = src[outer_index][inner_index]
            is_str = value.instance_of? String
            if is_str
                
                new_string = "#{new_string} #{value.to_s}"
               
            end
            
            inner_index += 1
        end
        outer_index += 1
    end
    p new_string
end