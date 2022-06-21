module Paramable
    module InstanceMethods

    def to_param
        name.downcase.gsub(' ', '-')
    end

    end
end

# include Paramable::InstanceMethods in song and artist
# make sure require_relative '../lib/concerns/paramable' is in enviornment file