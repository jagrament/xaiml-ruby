# frozen_string_literal: true

module XAIML
  module Element
    class Condition < Base
      @allowed_object = [XAIML::Element::Li, XAIML::Element::Name, XAIML::Element::Value]
    end
  end
end
