load 'suggestion_box.rb'
load 'categories.rb'
box = SuggestionBox. new
box.load_box("myLovelyHorse.json")
puts box.addSuggestion("Occupation", "Muppet")
puts box.getSuggestion("Occupation")
puts box.getSuggestion("Occupation")
puts box.getSuggestion("Occupation")
puts box.getSuggestion("Occupation")
box.save_box("myLovelyHorse.json")
