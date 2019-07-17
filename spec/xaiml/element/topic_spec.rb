# frozen_string_literal: true

require 'spec_helper'

RSpec.describe XAIML::Element::Topic do
  context 'when append objects into topic' do
    let(:topic) { described_class.new }

    it 'append_category' do
      expect { topic.append_child(XAIML::Element::Category.new) }.not_to raise_error
    end

    it 'append_not_allowed' do
      expect { topic.append_child(XAIML::Element::Arg.new) }.to raise_error XAIML::DocumentError
    end
  end
end
