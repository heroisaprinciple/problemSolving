require 'rspec'
require './codewars/5kyu/hashtagGenerator'

describe 'generate hashtag when string length is less that 140' do
  # a particular value used in the block
  subject { generateHashtag(str) }

  describe 'when one space' do
    let(:str) {'  Hello there thanks for trying my Kata'}
    it 'removes one space' do
      expect(subject)
               .to eq("#HelloThereThanksForTryingMyKata")
    end
  end

  describe 'when more than one space' do
    let(:str) {"    Hello     World   "                 }
    it 'removes more than one space' do
      expect(subject).to eq("#HelloWorld")
    end
  end

  describe 'empty string' do
    let(:str) {''}
    it 'returns false' do
      expect(subject).to eq(false)
    end
  end
end

describe 'more than or equal to 140 characters' do
  let(:str) {'L' * 140}
  it 'returns false' do
    expect(subject).to be(false)
  end
end
