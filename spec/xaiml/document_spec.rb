require "spec_helper"

RSpec.describe XAIML::Document do
  describe "#FUNCTIONAL TESTS" do
    context "Initialize" do
      it "Check XAIML schema" do
        aiml = Ox::Element.new("aiml")
        aiml[:version] = "2.0.0"
        aiml[:xmlns] = "http://www.nttdocomo.com/aiml/schema"
        aiml[:'xmlns:html'] = "http://www.w3.org/1999/xhtml"
        aiml[:'xmlns:xsi'] = "http://www.w3.org/2001/XMLSchema-instance"
        aiml[:'xsi:schemaLocation'] = "http://www.nttdocomo.com/aiml/schema/XAIML.xsd"
        expect(XAIML::Document.new.document.aiml).to eq aiml
      end
    end

    context "append_child" do
      it "Check Single Object" do
        d = XAIML::Document.new
        expect { d.append_child(XAIML::Element::Category.new) }.not_to raise_error
      end

      it "Check Array" do
        d = XAIML::Document.new
        expect {
          d.append_child([
            XAIML::Element::Category.new,
            XAIML::Element::Category.new,
          ])
        } .not_to raise_error
      end

      it "Check Error" do
        d = XAIML::Document.new
        expect { d.append_child("Not to be success") }.to raise_error XAIML::DocumentError
      end
    end

    context "append_into" do
      it "Check working successful" do
        d = XAIML::Document.new
        d.append_child(XAIML::Element::Topic.new({ name: "test" }))
        category = XAIML::Element::Category.new
        d.append_into(:topic, category)
        category.append_child(XAIML::Element::Pattern.new)
        category.append_child(XAIML::Element::Template.new)
        expect(d.write).to eq XAIML::Document.load_file(stub_file("base.aiml").path).write
      end

      it "Check raise Error when target is not found" do
        d = XAIML::Document.new
        expect { d.append_into(:topic, XAIML::Element::Category.new) }.to raise_error NoMethodError
      end
    end

    it "load_file" do
    end

    context "Compare test.aiml " do
      it "Build Instance" do
        document = XAIML::Document.new
        topic = XAIML::Element::Topic.new({ name: "test" })
        pattern = XAIML::Element::Pattern.new({ level: :surface }, "hello")
        template = XAIML::Element::Template.new({}, ["hello", XAIML::Element::Command.new({}, "speaker=akari")])
        category = XAIML::Element::Category.new({}, pattern, template)
        topic.append_child(category)
        document.append_child(topic)
        expect(document.write).to eq XAIML::Document.load_file(stub_file("test.aiml").path).write
      end

      it "Build Nesting initialize" do
        document = XAIML::Document.new
        category = XAIML::Element::Category.new({}, XAIML::Element::Pattern.new, XAIML::Element::Template.new)
        document.append_child(XAIML::Element::Topic.new({ name: "test" }, category))
        expect(document.write).to eq XAIML::Document.load_file(stub_file("base.aiml").path).write
      end
    end
  end
end
