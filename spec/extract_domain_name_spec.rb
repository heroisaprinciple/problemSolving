require 'rspec'
require './codewars/5kyu/extractDomainName'

RSpec.describe '#retrive domain' do
  subject { domain_name(url) }

  describe 'when one top-level domain name follows after' do
    context 'google' do
      let(:url) { 'http://google.com' }
        it 'returns google' do
          expect(subject).to eq('google')
        end
    end

    context 'хакер' do
      let(:url) { 'www.xakep.ru' }
      it 'returns хаkер' do
        expect(subject).to eq('xakep')
      end
    end

    context 'youtube' do
      let(:url) { 'https://youtube.com' }
      it 'returns youtube' do
        expect(subject).to eq('youtube')
      end
    end
  end

  describe 'when two top-level domain names follow after' do
    let(:url) { 'http://google.co.jp' }
    it 'returns google' do
      expect(subject).to eq('google')
    end
  end
end