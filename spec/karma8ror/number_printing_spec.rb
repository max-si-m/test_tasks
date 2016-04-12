require 'spec_helper'
require_relative '../../karma8ror/number_printing'

describe NumberPrinting do

  it 'between 106 and 109 only one "Hi"' do
    expect(subject.perform(106, 109)).to contain_exactly(106, 107, "Hi", 109)
  end
end