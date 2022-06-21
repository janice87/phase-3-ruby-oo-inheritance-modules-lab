module Findable
    module ClassMethods
    def find_by_name(name)
        self.all.detect{|a| a.name == name} #self.all refers to the @@artists or @@songs
    end
   end
end

# make sure to extend extend Findable::ClassMethods and environment file is updated

# original code, using @@songs and @@artists
  # def self.find_by_name(name) # remove self from method name
  #   @@songs.detect{|a| a.name == name}
  # end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

# Refactor code:
# 1. remove the self from method name
# 2. in order to reference the collection of ALL of the instances of a class w/out referencing the class vars, use self.all method to get @@artists and @@songs 

# from artist.rb and song.rb 
# def self.all
#     @@songs
#   end

#   def self.all
#     @@artists
#   end


