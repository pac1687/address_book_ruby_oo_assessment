require 'rspec'
require 'email'

describe Email do
	it 'initializes with an email' do
		test_email = Email.new('jdoe@gmail.com')
		expect(test_email).to be_an_instance_of Email
	end

	it 'outputs the email' do
		test_email = Email.new('jdoe@gmail.com')
		expect(test_email.email).to eq 'jdoe@gmail.com'
	end
end