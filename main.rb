load 'suggestion_box.rb'
load 'categories.rb'
box = SuggestionBox. new "my_suggestions"
#a little test code to make sure everything's dry-firing correctly
box.run_defaults
flag = true
output_msg= "add suggestion [A]\n pick suggestion [P]\n view categories [V] \n add categories[C]\n Quit [Q]"


def getOption(puts_msg)
  puts puts_msg
  raw = gets
  ch = raw[0]
  return ch.upcase
end


#main program logic
while flag
  option = getOption(output_msg)
  case option
  when 'A'
    #do stuff
    puts "you hit A, wow!"
  when 'P'
    #do stuff
    puts "you entered P"
  when 'V'
      #do stuff
      puts "you entered V"
  when 'C'
    #do stuff
    puts "you entrd C"
  when 'Q'
    box.save
    puts "bye"
    flag = false
  else
    puts "that was not a valid entry"
  end
end
