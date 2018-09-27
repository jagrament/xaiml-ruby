require "spec_helper"
RSpec.describe AIML::Element::Base do
  context "UNIT TEST" do
    it "append_child" do
      base = AIML::Element::Base.new
      base.append_child("a")
      base.append_child("b")
      expect(base.element.nodes.first).to eq "a"
    end

    it "prepend_child" do
      base = AIML::Element::Base.new
      base.prepend_child("a")
      base.prepend_child("b")
      expect(base.element.nodes.first).to eq "b"
    end

    it "write" do
      base = AIML::Element::Base.new
      expect(base.write).to eq "\n<base/>\n"
    end
  end
end
