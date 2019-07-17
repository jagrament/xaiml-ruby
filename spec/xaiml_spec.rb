# frozen_string_literal: true

require "spec_helper"

describe XAIML do
  it "has a version number" do
    expect(XAIML::VERSION).not_to be nil
  end

  it "Successfully loading XAIML" do
    expect(described_class).not_to be nil
  end

  it "Successfully loading XAIML:Document" do
    expect(XAIML::Document).not_to be nil
  end

  it "Successfully loading XAIML::Element" do
    expect(XAIML::Element).not_to be nil
  end

  it "Successfully loading XAIML::Element::Base" do
    expect(XAIML::Element::Base).not_to be nil
  end
end
