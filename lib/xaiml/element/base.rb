# frozen_string_literal: true

module XAIML
  module Element
    class Base < XAIML::Document
      attr_accessor :element

      def self.allowed_object
      end

      # rubocop:disable Lint/MissingSuper -- intentionally skips Document#initialize; elements build a standalone fragment, not a full @document tree
      def initialize(attributes = {}, object = nil)
        @element = Ox::Element.new(self.class.name.split("::").last.downcase)
        attributes.each do |k, v|
          @element[k] = v
        end
        append_child(object) if object
      end
      # rubocop:enable Lint/MissingSuper

      def write
        Ox.dump(@element)
      end
    end
  end
end
