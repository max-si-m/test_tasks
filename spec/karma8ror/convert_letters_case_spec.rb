require 'spec_helper'
require_relative '../../karma8ror/convert_letters_case'

describe ConvertLettersCase do
  it 'convert downcase to upper case' do
    expect(subject.perform('ssssss')).to eq 'SSSSSS'
  end

  it 'convert upper to down case' do
    expect(subject.perform('SSSSSS')).to eq 'ssssss'
  end

  it 'mixed cases convert correctly' do
    expect(subject.perform('SomeStringLikeThis')).to eq 'sOMEsTRINGlIKEtHIS'
  end
end
