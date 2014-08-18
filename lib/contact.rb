class Contact
	@@all_contacts = []
	@@all_names = []
	@@chosen_contact = []

	def initialize(name)
		@name = name
		@phone = []
		@address = []
		@email = []
	end

	def name
		@name
	end

	def phone
		@phone
	end

	def address
		@address
	end

	def email
		@email
	end

	def add_phone(phone)
		@phone << phone
	end

	def add_address(address)
		@address << address
	end

	def add_email(email)
		@email << email
	end

	def save
		@@all_contacts << self
		@@all_names << self.name
	end

	def Contact.all
		@@all_contacts
	end

	def Contact.all_names
		@@all_names
	end

	def Contact.clear_all
		@@all_contacts = []
		@@all_names = []
	end

	def Contact.view(user_choice)
		@@all_contacts.each do |contact|
			if user_choice == contact.name
				@@chosen_contact << contact
			end
		end
	end

	def Contact.chosen_contact
		@@chosen_contact
	end
end