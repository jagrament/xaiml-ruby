require "spec_helper"

RSpec.describe AIML::Element::Condition do
  context "#UNIT TEST" do
    it "append_li" do
      condition = AIML::Element::Condition.new
      expect { condition.append_child(AIML::Element::Li.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      condition = AIML::Element::Condition.new
      expect { condition.append_child(AIML::Element::Arg.new) }.to raise_error AIML::DocumentError
    end
  end
end
