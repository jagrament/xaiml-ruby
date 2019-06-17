module XAIML
  module Element
    class Ext < Base
      def self.allowed_object
        [XAIML::Element::Arg]
      end
    end
  end
end
