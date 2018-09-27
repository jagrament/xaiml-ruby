require "spec_helper"

RSpec.describe AIML::Element::Category do
  context "#UNIT TEST" do
    it "append_pattern" do
      category = AIML::Element::Category.new
      expect { category.append_child(AIML::Element::Pattern.new) }.not_to raise_error
    end

    it "append_template" do
      category = AIML::Element::Category.new
      expect { category.append_child(AIML::Element::Template.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      category = AIML::Element::Category.new
      expect { category.append_child(AIML::Element::Arg.new) }.to raise_error AIML::DocumentError
    end
  end
end
