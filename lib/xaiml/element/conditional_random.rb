module XAIML
  module Element
    class ConditionalRandom < Base
      def self.allowed_object
        [XAIML::Element::Li]
      end
    end
  end
end
