# frozen_string_literal: true

require "spec_helper"

RSpec.describe XAIML::Element::Condition do
  context "when append objects into condition" do
    let(:condition) { described_class.new }

    it "append_li" do
      expect { condition.append_child(XAIML::Element::Li.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      expect { condition.append_child(XAIML::Element::Arg.new) }.to raise_error XAIML::DocumentError
    end
  end
end
