require 'rspec'
require './codewars/6kyu/breakTheCamelCase'

RSpec.describe 'successful breaking' do
  context 'to the sentence' do
    it 'makes space before every capital' do
      expect(solution('camelCasing')).to eq('camel Casing')
    end

    it 'makes no space before every downcase' do
      expect(solution('identifier')).to eq('identifier')
    end

    it 'returns blank space when empty string' do
      expect(solution('')).to eq('')
    end
  end
end