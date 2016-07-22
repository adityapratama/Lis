require 'spec_helper'

describe Lis do
  it 'has a version number' do
    expect(Lis::VERSION).not_to be nil
  end

  describe '.add_list' do
  	let(:repo) { Lis.repo }

  	it 'add a new list' do 
  		expect { Lis.add_list('spec') }.to change { repo.count }.by(1)
  	end

  	context 'when title is blank' do 
  		subject(:add_black_test) { Lis.add_list('') }

  		it 'does not persist' do 
  			expect { add_black_test }.to_not change{ repo.count }
  		end

  		it { eq(false) }
  	end
  end

  describe '.fetch' do 
    let(:list) { Lis.add_list("rspec add list") }
    let(:lists) { Lis.fetch }

    context 'lists count' do
      it 'should be not 0' do
        expect(lists.count).to be > 0
      end
    end
  end
end
