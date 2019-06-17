module XAIML
  module Element
    class Condition < Base
      def self.allowed_object
        [XAIML::Element::Li, XAIML::Element::Name, XAIML::Element::Value]
      end
    end
  end
end
