require "spec_helper"

RSpec.describe XAIML::Element::Condition do
  context "#UNIT TEST" do
    it "append_li" do
      condition = XAIML::Element::Condition.new
      expect { condition.append_child(XAIML::Element::Li.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      condition = XAIML::Element::Condition.new
      expect { condition.append_child(XAIML::Element::Arg.new) }.to raise_error XAIML::DocumentError
    end
  end
end
