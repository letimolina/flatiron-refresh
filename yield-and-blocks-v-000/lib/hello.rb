def hello_t(people)
  people.each do |name|
    puts "Hi, #{name}" if name.start_with?("T")
  end
end

# call your method here!
