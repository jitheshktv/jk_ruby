require 'spec_helper'

describe TestGem do
  subject {TestGem.new}

  describe "#Process" do
    let(:input) {'My grandmom gave me a sweater for Christmas'}
    let(:output) {subject.process(input)}

    it 'converts to lower case' do
      expect(output.downcase).to eq output
    end

    it 'combines nouns with adjectives' do
      expect(output).to match /so grandmom./i
      expect(output).to match /such sweater./i
      expect(output).to match /very christmas/i
    end

    it 'always ends with wow' do
      expect(output).to end_with 'wow.'
    end
  end
end