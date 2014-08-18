require 'rspec'
require 'contact'

describe Contact do
	it 'initializes with a name' do
		test_name = Contact.new('John Doe')
		expect(test_name).to be_an_instance_of Contact
	end

	it 'outputs the name' do
		test_name = Contact.new('John Doe')
		expect(test_name.name).to eq 'John Doe'
	end
end