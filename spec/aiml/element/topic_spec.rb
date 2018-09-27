require "spec_helper"

RSpec.describe AIML::Element::Topic do
  context "#UNIT TEST" do
    it "append_category" do
      topic = AIML::Element::Topic.new
      expect { topic.append_child(AIML::Element::Category.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      topic = AIML::Element::Topic.new
      expect { topic.append_child(AIML::Element::Arg.new) }.to raise_error AIML::DocumentError
    end
  end
end
