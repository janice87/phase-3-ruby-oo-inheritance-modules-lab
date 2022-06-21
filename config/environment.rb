require 'pry'

require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'

# Bc the environment.rb file is read and loaded into memory in line order
# if Artist requires Memorable, then Artist must be required after requiring Memorable.
# Memorable must be loaded first, so that as Ruby when loads Artist, 
# Memorable::ClassInstances is already defined.