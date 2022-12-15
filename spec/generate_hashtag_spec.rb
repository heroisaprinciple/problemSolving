require 'rspec'
require './codewars/5kyu/hashtagGenerator'

describe 'generate hashtag when string length is less that 140' do
  before :each do
    generateHashtag(" Hello there thanks for trying my Kata").length < 140
  end

  describe 'adds # to the start' do
    it 'removes one space' do
      expect(generateHashtag(" Hello there thanks for trying my Kata"))
               .to eq("#HelloThereThanksForTryingMyKata")
    end

    it 'removes more than one space' do
      expect(generateHashtag("    Hello     World   ")).to eq("#HelloWorld")
    end
  end

  describe 'empty string' do
    it 'returns false' do
      expect(generateHashtag("")).to eq(false)
    end
  end
end

describe 'more than or equal to 140 characters' do
  it 'returns false' do
    expect(generateHashtag("L" * 140)).to be(false)
  end
end
