class SuggestionBox
#not yet seperated into categoires, will want to move to some kind of JSON storage asap
  def initialize( filename )
    @filepath = filename+".json"
    puts "file name is: "+@filepath
    #try to read that filepath
    #if filepath doesn't exist, create it and call "run defaults"
    @locations = ["Laundromat", "Starbucks", "The Woods", "Paris"]
    @occupations = ["Doctor", "Plumber", "Wizard", "Cobbler", "Theif"]
    @genres = ["Bollywood", "Western", "Opera", "Film Noir", "Shakespeare"]
    @relationships  = ["Divorced Parents", "Coworkers", "Roommates", "Hookups", "King/Serf"]
  end

def add_category(category)
  #check if category is a key in the hash table
  #return false if it's already in there
  #else add that key with an empty array
  #return true
end

def add_suggestion(category, suggestion)
end

def run_defaults()
  loc ="Location"
  occ = "Occupation"
  rel = "Relatinship"
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
