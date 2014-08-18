require 'rspec'
require 'contact'
require 'phone'
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
		test_phone = Phone.new('555-123-4567')
		test_contact.add_phone(test_phone.phone)
		expect(test_contact.phone).to eq ['555-123-4567']
	end

	it 'adds an address' do
		test_contact = Contact.new('John Doe')
		test_address = Address.new('123 Main Street')
		test_contact.add_address(test_address.address)
		expect(test_contact.address).to eq ['123 Main Street']
	end

	it 'adds an email address' do
		test_contact = Contact.new('John Doe')
		test_email = 'jdoe@gmail.com'
		test_contact.add_email(test_email)
		expect(test_contact.email).to eq ['jdoe@gmail.com']
	end

	it 'saves the contact' do
		test_contact = Contact.new('John Doe')
		test_phone = Phone.new('555-123-4567')
		test_address = Address.new('123 Main Street')
		test_email = 'jdoe@gmail.com'
		test_contact.add_phone(test_phone.phone)
		test_contact.add_address(test_address.address)
		test_contact.add_email(test_email)
		test_contact.save
		expect(Contact.all).to eq [test_contact]
	end
end