# frozen_string_literal: true

require 'spec_helper'
RSpec.describe XAIML::Element::Base do
  let(:base) { described_class.new }

  context 'when append objects' do
    it 'append_child' do
      base.append_child('a')
      base.append_child('b')
      expect(base.element.nodes.first).to eq 'a'
    end

    it 'prepend_child' do
      base.prepend_child('a')
      base.prepend_child('b')
      expect(base.element.nodes.first).to eq 'b'
    end

    it 'write' do
      expect(base.write).to eq '<base/>'
    end
  end
end
