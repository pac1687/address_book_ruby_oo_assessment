require 'rspec'
require 'phone'

describe Phone do
	it 'initializes with a phone number' do
		test_phone = Phone.new('555-123-4567')
		expect(test_phone).to be_an_instance_of Phone
	end
end