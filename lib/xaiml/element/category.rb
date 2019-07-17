# frozen_string_literal: true

module XAIML
  module Element
    class Category < Base
      @allowed_object = [XAIML::Element::Pattern, XAIML::Element::Template, XAIML::Element::That]
      def initialize(attributes = {}, patterns = nil, template = nil)
        super(attributes)
        append_child patterns if patterns
        append_child template if template
      end
    end
  end
end
