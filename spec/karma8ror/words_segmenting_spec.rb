require 'spec_helper'
require_relative '../../karma8ror/words_segmenting'

describe WordsSegmeting do
  let(:word) { 'двадесятка' }
  let(:dict) { ['два', 'десятка', 'девятка'] }

  it 'raise ArgumentError when dict is not array' do
    expect { subject.perform(word, 1) }.to raise_error(ArgumentError)
  end

  it 'return true if word fully separated by dictionary' do
    expect(subject.perform(word, dict)).to be true
  end

  it 'return false if word not fully separated by dictionary' do
    expect(subject.perform("#{word}1", dict)).to be false
  end
end
