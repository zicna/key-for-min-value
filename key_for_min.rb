# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#     keys_arr = []
#     if name_hash == {}
#         return nil
#     else
#         keys_arr = name_hash.collect {|key, value| value}
#     end
#     keys_arr.min(1)
# end

def key_for_min_value(name_hash)
    #should be min = +infinity
    min = 10000
    min_key = ""
    if name_hash == {}
        return nil
    else
        keys_arr = name_hash.each do |key, value|
            if min > value
                min_key = key
                min = value
            end
        end
        return min_key
    end
    
end