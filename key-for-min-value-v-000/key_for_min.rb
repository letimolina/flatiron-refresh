# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_name = nil
  name_hash.each do |name, value|
    lowest_name = name if lowest_name.nil?
    lowest_value = value if lowest_value.nil?
    if value < lowest_value
      lowest_value = value
      lowest_name = name
    end
  end
  lowest_name
end
