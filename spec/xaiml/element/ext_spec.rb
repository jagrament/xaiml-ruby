require "spec_helper"

RSpec.describe XAIML::Element::Ext do
  context "#UNIT TEST" do
    it "append_arg" do
      ext = XAIML::Element::Ext.new
      expect { ext.append_child(XAIML::Element::Arg.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      ext = XAIML::Element::Ext.new
      expect { ext.append_child(XAIML::Element::Li.new) }.to raise_error XAIML::DocumentError
    end
  end
end
