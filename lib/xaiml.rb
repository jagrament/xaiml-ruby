require "xaiml/version"
require "xaiml/exceptions"
require "ox"

module XXAIML
  Dir[File.expand_path("xaiml", __dir__) << "/*.rb"].each do |file|
    require file
  end
end
