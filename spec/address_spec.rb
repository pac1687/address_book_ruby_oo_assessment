require 'rspec'
require 'address'

describe Address do
	it 'initializes with an address' do
		test_address = Address.new('123 Main Street')
		expect(test_address).to be_an_instance_of Address
	end

	it 'outputs the address' do
		test_address = Address.new('123 Main Street')
		expect(test_address.address).to eq '123 Main Street'
	end
end