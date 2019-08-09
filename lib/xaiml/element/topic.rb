# frozen_string_literal: true

module XAIML
  module Element
    class Topic < Base
      def self.allowed_object
        [XAIML::Element::Category]
      end
    end
  end
end
