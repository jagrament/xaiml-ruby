require "spec_helper"

describe AIML do
  it "has a version number" do
    expect(AIML::VERSION).not_to be nil
  end

  it "Successfully loading AIML" do
    expect(AIML).not_to be nil
  end

  it "Successfully loading AIML:Document" do
    expect(AIML::Document).not_to be nil
  end

  it "Successfully loading AIML::Element" do
    expect(AIML::Element).not_to be nil
  end

  it "Successfully loading AIML::Element::Base" do
    expect(AIML::Element::Base).not_to be nil
  end
end
