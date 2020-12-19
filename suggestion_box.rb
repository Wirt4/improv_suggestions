class SuggestionBox
#not yet seperated into categoires, will want to move to some kind of JSON storage asap
  def initialize( filename )
    @filepath = filename+".json"
  #  puts "file name is: "+@filepath
    #try to read that filepath
    #if filepath doesn't exist, create it and call "run defaults"
    @suggestions = Hash.new(Array.new)
  end

def add_category(category)
  #category.upcase!
  if @suggestions.has_key?(category)
    return false
  else
    @suggestions[category] = Array.new
    return true
  end
end

def add_suggestion(category, suggestion)
  if @suggestions.has_key?(category)
    @suggestions[category].push(suggestion)
    puts ""
    puts @suggestions[category]
    return true
  else
    return false
  end
end

def get_all()
  return @suggestions.to_a
end


def get_categories()
  return @suggestions.keys
end

def get_suggestion(category)
  #check if the hash has the category
  if @suggestions.has_key?(category)
    @suggestions[category].shuffle!
    prompt = @suggestions[category].pop
    return prompt 
  else
    return nil
  end
  #scramble that value array in place
  #prompt is popped from Array
  #erase the key if the array is empty
  #return prompt
end

def run_defaults()
  loc ="LOCATION"
  occ = "OCCUPATION"
  rel = "RELATIONSHIP"
  add_category(loc)
  add_suggestion(loc, "laundromat")
  add_suggestion(loc, "the gym")
  add_suggestion(loc, "an office")
  add_category(occ)
  add_suggestion(occ, "dentist")
  add_suggestion(occ, "theif")
  add_suggestion(occ, "plumber")
  add_category(rel)
  add_suggestion(rel, "best friends")
  add_suggestion(rel, "coworker")
  add_suggestion(rel, "grandparents")
end

def save
  #write the current hashtable to json
  #save json in the filepath determined in the constructor
end

end
