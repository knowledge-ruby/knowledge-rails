# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Knowledge::Setters::Rails do
  describe '#set' do
    let(:application_mock) { double }
    let(:config_mock) { double }

    before do
      # Mocks
      expect(Rails).to receive(:application).and_return(application_mock)
      expect(application_mock).to receive(:config).and_return(config_mock)
    end

    it 'sets the variable on the configuration' do
      expect(config_mock).to receive(:foo=).with(:bar)

      subject.set(name: :foo, value: :bar)
    end
  end

  it 'sets itself as default setter' do
    expect(Knowledge::Setters.config.default).to eq described_class
  end
end
