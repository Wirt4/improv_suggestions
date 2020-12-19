load 'suggestion_box.rb'
load 'interface.rb'
box = SuggestionBox. new "my_suggestions"
interface = Interface. new  " add suggestion [A]\n pick suggestion [P]\n view categories [V] \n add categories[C]\n Quit [Q]"

box.run_defaults
flag = true
#output_msg= "add suggestion [A]\n pick suggestion [P]\n view categories [V] \n add categories[C]\n Quit [Q]"

#main program logic
while flag
  option = interface.getOption()
  case option
  when 'A'
    category = interface.getCategory()
    topic = interface.getTopic()
    box.add_suggestion(category, topic)
  when 'P'
    category = interface.getCategory()
    puts box.get_suggestion(category)
  when 'V'
      #do stuff
      puts box.get_categories
  when 'C'
    category = interface.getCategory()
    box.add_category(category)
  when 'Q'
    box.save
    puts "bye"
    flag = false
  else
    puts "that was not a valid entry"
  end
end
