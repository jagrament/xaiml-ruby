# frozen_string_literal: true

require "spec_helper"

RSpec.describe XAIML::Element::ConditionalRandom do
  context "when append objects into conditional_random" do
    let(:conditional_random) { described_class.new }

    it "append_li" do
      expect { conditional_random.append_child(XAIML::Element::Li.new) }.not_to raise_error
    end

    it "append_not_allowed" do
      expect { conditional_random.append_child(XAIML::Element::Arg.new) }.to raise_error XAIML::DocumentError
    end
  end
end
