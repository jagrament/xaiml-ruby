# frozen_string_literal: true

require 'spec_helper'

RSpec.describe XAIML::Element::Ext do
  context 'when append objects into ext' do
    it 'append_arg' do
      ext = described_class.new
      expect { ext.append_child(XAIML::Element::Arg.new) }.not_to raise_error
    end

    it 'append_not_allowed' do
      ext = described_class.new
      expect { ext.append_child(XAIML::Element::Li.new) }.to raise_error XAIML::DocumentError
    end
  end
end
