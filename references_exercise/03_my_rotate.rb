# Write a method, my_rotate!(array, amt), that accepts an array and a number as args.
# The method should mutate the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method should return the given array.
# Do not use the built-in Array#rotate
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.


def my_rotate!(array, amt)
    orig_array = array.clone
    array.length.times do |i|
        idx = i + amt
        if idx >= array.length
            idx -= array.length
        end
        array[i] = orig_array[idx]
    end
    array
end


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 == array_1.object_id
result_1 = my_rotate!(array_1, 2)
p result_1                          == ["c", "d", "a", "b"]
p result_1.object_id                == array_1.object_id


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 == array_2.object_id
result_2 = my_rotate!(array_2, 1)
p result_2                          == ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                == array_2.object_id


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 == array_3.object_id
result_3 = my_rotate!(array_3, -3)
p result_3                          == ["b", "c", "d", "a"]
p result_3.object_id                == array_3.object_id
