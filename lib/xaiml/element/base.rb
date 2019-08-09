# frozen_string_literal: true

module XAIML
  module Element
    class Base < XAIML::Document
      attr_accessor :element

      def initialize(attributes = {}, object = nil)
        @element = Ox::Element.new(self.class.name.split("::").last.downcase)
        attributes.each do |k, v|
          @element[k] = v
        end
        append_child(object) if object
      end

      def write
        Ox.dump(@element)
      end

      def self.allowed_object; end
    end
  end
end
