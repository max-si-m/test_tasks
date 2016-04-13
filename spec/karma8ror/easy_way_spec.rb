require 'spec_helper'
require_relative '../../karma8ror/easy_way'

describe EasyWay do
  let(:piramid) {[  [2],
                    [3,4],
                   [6,5,7],
                  [4,1,8,3] ]}

  it 'crawling piramid correctly' do
    result = subject.perform(piramid)
    expect(result.first).to eq [2, 3, 5, 1]
    expect(result.last).to eq 11
  end
end

