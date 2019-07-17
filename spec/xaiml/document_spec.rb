# frozen_string_literal: true

require 'spec_helper'

RSpec.describe XAIML::Document do
  describe 'with cases' do
    let(:document) { described_class.new }
    let(:topic) { XAIML::Element::Topic.new(name: 'test') }
    let(:category) { XAIML::Element::Category.new({}, pattern, template) }
    let(:pattern) { XAIML::Element::Pattern.new }
    let(:template) { XAIML::Element::Template.new }

    context 'when initialize' do
      let(:aiml) do
        aiml = Ox::Element.new('aiml')
        aiml[:version] = '2.0.0'
        aiml[:xmlns] = 'http://www.nttdocomo.com/aiml/schema'
        aiml[:'xmlns:html'] = 'http://www.w3.org/1999/xhtml'
        aiml[:'xmlns:xsi'] = 'http://www.w3.org/2001/XMLSchema-instance'
        aiml[:'xsi:schemaLocation'] = 'http://www.nttdocomo.com/aiml/schema/AIML.xsd'
        aiml
      end

      it 'Check XAIML schema' do
        expect(described_class.new.document.aiml).to eq aiml
      end
    end

    context 'when append_child' do
      it 'with single object' do
        expect { document.append_child(XAIML::Element::Category.new) }.not_to raise_error
      end

      it 'with array' do
        expect { document.append_child([XAIML::Element::Category.new, XAIML::Element::Category.new]) }.not_to raise_error
      end

      it 'with error' do
        expect { document.append_child('Not to be success') }.to raise_error XAIML::DocumentError
      end
    end

    context 'when append_into' do
      it 'check working successful' do
        document.append_child(topic)
        document.append_into(:topic, category)
        expect(document.write).to eq described_class.load_file(stub_file('base.aiml').path).write
      end

      it 'check raise Error when target is not found' do
        expect { document.append_into(:topic, XAIML::Element::Category.new) }.to raise_error NoMethodError
      end
    end

    context 'when compare with test.aiml ' do
      let(:pattern) { XAIML::Element::Pattern.new({ level: :surface }, 'hello') }
      let(:template) { XAIML::Element::Template.new({}, ['hello', XAIML::Element::Command.new({}, 'speaker=akari')]) }

      it 'build Instance' do
        topic.append_child(category)
        document.append_child(topic)
        expect(document.write).to eq described_class.load_file(stub_file('test.aiml').path).write
      end
    end

    context 'when compare with base.aiml' do
      it 'build nesting initialize' do
        topic.append_child(category)
        document.append_child(topic)
        expect(document.write).to eq described_class.load_file(stub_file('base.aiml').path).write
      end
    end
  end
end
