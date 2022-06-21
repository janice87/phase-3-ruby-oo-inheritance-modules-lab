module Memorable
  module ClassMethods    
    def reset_all
        self.all.clear
    end

    def count
        self.all.count
    end
  end

  module InstanceMethods
    def initialize
        self.class.all << self
    end
  end

end

#make sure to extend and env file is updated

# these are class methods and will be extended in artist and song
# Remember that the self keyword is omitted when defining class method names inside modules
# original code from song and artist

#  def self.reset_all
# self.all.clear
# end

# def self.count
#   self.all.count
# end