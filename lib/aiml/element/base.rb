module AIML
  module Element
    class Base < AIML::Document
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
    end
  end
end
