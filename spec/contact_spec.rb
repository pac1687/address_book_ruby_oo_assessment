require 'rspec'
require 'contact'
require 'pry'

describe Contact do
	it 'initializes with a name' do
		test_contact = Contact.new('John Doe')
		expect(test_contact).to be_an_instance_of Contact
	end

	it 'outputs the name' do
		test_contact = Contact.new('John Doe')
		expect(test_contact.name).to eq 'John Doe'
	end

	it 'adds a phone number' do
		test_contact = Contact.new('John Doe')
		test_phone = '555-123-4567'
		test_contact.add_phone(test_phone)
		expect(test_contact.phone).to eq ['555-123-4567']
	end
end