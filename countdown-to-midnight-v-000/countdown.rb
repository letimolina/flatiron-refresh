#write your code here
def countdown_with_sleep(integer)
  sleep(integer)
end

def countdown(integer)
  while integer > 0
    puts "#{integer} SECOND(S)!"
    integer -= 1
    countdown_with_sleep(1)
  end
  "HAPPY NEW YEAR!"
end
