require "spec_helper"

RSpec.describe AIML::Document do
  describe "#FUNCTIONAL TESTS" do
    context "Initialize" do
      it "Check AIML schema" do
        aiml = Ox::Element.new("aiml")
        aiml[:version] = "2.0.0"
        aiml[:xmlns] = "http://www.nttdocomo.com/aiml/schema"
        aiml[:'xmlns:html'] = "http://www.w3.org/1999/xhtml"
        aiml[:'xmlns:xsi'] = "http://www.w3.org/2001/XMLSchema-instance"
        aiml[:'xsi:schemaLocation'] = "http://www.nttdocomo.com/aiml/schema/AIML.xsd"
        expect(AIML::Document.new.document.aiml).to eq aiml
      end
    end

    context "append_child" do
      it "Check Single Object" do
        d = AIML::Document.new
        expect { d.append_child(AIML::Element::Category.new) }.not_to raise_error
      end

      it "Check Array" do
        d = AIML::Document.new
        expect {
          d.append_child([
            AIML::Element::Category.new,
            AIML::Element::Category.new,
          ])
        } .not_to raise_error
      end

      it "Check Error" do
        d = AIML::Document.new
        expect { d.append_child("Not to be success") }.to raise_error AIML::DocumentError
      end
    end

    context "append_into" do
      it "Check working successful" do
        d = AIML::Document.new
        d.append_child(AIML::Element::Topic.new({ name: "test" }))
        category = AIML::Element::Category.new
        d.append_into(:topic, category)
        category.append_child(AIML::Element::Pattern.new)
        category.append_child(AIML::Element::Template.new)
        expect(d.write).to eq AIML::Document.load_file(stub_file("base.aiml").path).write
      end

      it "Check raise Error when target is not found" do
        d = AIML::Document.new
        expect { d.append_into(:topic, AIML::Element::Category.new) }.to raise_error NoMethodError
      end
    end

    it "load_file" do
    end

    context "Compare test.aiml " do
      it "Build Instance" do
        document = AIML::Document.new
        topic = AIML::Element::Topic.new({ name: "test" })
        pattern = AIML::Element::Pattern.new({ level: :surface }, "hello")
        template = AIML::Element::Template.new({}, ["hello", AIML::Element::Command.new({}, "speaker=akari")])
        category = AIML::Element::Category.new({}, pattern, template)
        topic.append_child(category)
        document.append_child(topic)
        expect(document.write).to eq AIML::Document.load_file(stub_file("test.aiml").path).write
      end

      it "Build Nesting initialize" do
        document = AIML::Document.new
        category = AIML::Element::Category.new({}, AIML::Element::Pattern.new, AIML::Element::Template.new)
        document.append_child(AIML::Element::Topic.new({ name: "test" }, category))
        expect(document.write).to eq AIML::Document.load_file(stub_file("base.aiml").path).write
      end
    end
  end
end
