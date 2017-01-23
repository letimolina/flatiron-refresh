def oxford_comma(array)
  case array.size
  when 1
    array.join
  when 2
    return array.join(" and ")
  else
    array[-1].insert(0, "and ")
  end
  array.join(", ")
end
