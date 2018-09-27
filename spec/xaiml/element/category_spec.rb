require "spec_helper"

RSpec.describe XAIML::Element::Category do
  context "#UNIT TEST" do
    it "append_pattern" do
      category = XAIML::Element::Category.new
      expect { category.append_child(XAIML::Element::Pattern.new) }.not_to raise_error
    end

    it "append_template" do
      category = XAIML::Element::Category.new
      expect { category.append_child(XAIML::Element::Template.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      category = XAIML::Element::Category.new
      expect { category.append_child(XAIML::Element::Arg.new) }.to raise_error XAIML::DocumentError
    end
  end
end
