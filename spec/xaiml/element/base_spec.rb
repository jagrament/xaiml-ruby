# frozen_string_literal: true

require 'spec_helper'
RSpec.describe XAIML::Element::Base do
  context 'when append objects' do
    it 'append_child' do
      base = described_class.new
      base.append_child('a')
      base.append_child('b')
      expect(base.element.nodes.first).to eq 'a'
    end

    it 'prepend_child' do
      base = described_class.new
      base.prepend_child('a')
      base.prepend_child('b')
      expect(base.element.nodes.first).to eq 'b'
    end

    it 'write' do
      base = described_class.new
      expect(base.write).to eq '<base/>'
    end
  end
end
