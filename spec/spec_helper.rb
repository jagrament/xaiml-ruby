$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "xaiml"

def file_path(*paths)
  File.expand_path(File.join(File.dirname(__FILE__), "fixtures", *paths))
end

module XAIML
  module Test
    module MockFiles
      def stub_file(*filename)
        File.open(file_path(filename))
      end
    end
  end
end

RSpec.configure do |config|
  config.include XAIML::Test::MockFiles
end
