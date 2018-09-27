require "aiml/version"
require "aiml/exceptions"
require "ox"

module AIML
  Dir[File.expand_path("aiml", __dir__) << "/*.rb"].each do |file|
    require file
  end
end
