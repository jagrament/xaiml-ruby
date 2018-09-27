require "spec_helper"

RSpec.describe AIML::Element::Ext do
  context "#UNIT TEST" do
    it "append_arg" do
      ext = AIML::Element::Ext.new
      expect { ext.append_child(AIML::Element::Arg.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      ext = AIML::Element::Ext.new
      expect { ext.append_child(AIML::Element::Li.new) }.to raise_error AIML::DocumentError
    end
  end
end
