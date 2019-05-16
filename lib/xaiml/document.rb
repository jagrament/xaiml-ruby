module XAIML
  class Document
    attr_accessor :document
    attr_accessor :element

    def self.allowed_object
      ["Element::Topic", "Element::Category"]
    end

    def initialize
      @document = Ox::Document.new({ version: "1.0", encoding: "UTF-8" })

      aiml = Ox::Element.new("aiml")
      aiml[:version] = "2.0.0"
      aiml[:xmlns] = "http://www.nttdocomo.com/aiml/schema"
      aiml[:'xmlns:html'] = "http://www.w3.org/1999/xhtml"
      aiml[:'xmlns:xsi'] = "http://www.w3.org/2001/XMLSchema-instance"
      aiml[:'xsi:schemaLocation'] = "http://www.nttdocomo.com/aiml/schema/AIML.xsd"
      @document << aiml
      @element = aiml
    end

    def append_child(object)
      if object.is_a?(Array)
        object.each do |e|
          append(e)
        end
      else
        append(object)
      end
    end

    def append_into(target, object)
      @element.send(target.to_s) << object.element
    end

    def prepend_child(object)
      if object.is_a?(Array)
        object.each do |e|
          unshift(e)
        end
      else
        unshift(object)
      end
    end

    def allowed_object?(object)
      allowed_object = self.class.allowed_object
      return true if !allowed_object || (object.is_a?(String) && object.empty?)

      allowed_object.any? do |item|
        item = XAIML.const_get(item) if item.is_a?(String)
        object.is_a?(item)
      end
    end

    def write
      Ox.dump(@document)
    end

    private

      def append(object)
        raise XAIML::DocumentError, "Appended object must be element which Category or Topic" unless allowed_object?(object)

        object = object.element if object.respond_to?(:element)
        @element << object
      end

      def unshift(object)
        raise XAIML::DocumentError, "Prepend object must be element which Category or Topic" unless allowed_object?(object)

        object = object.element if object.respond_to?(:element)
        @element.prepend_child(object)
      end

      class << self
        def load_file(file)
          instance = new
          instance.document = Ox.load_file(file)
          instance
        end
      end
  end
end
