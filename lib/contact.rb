class Contact

	def initialize(name)
		@name = name
		@phone = []
	end

	def name
		@name
	end

	def phone
		@phone
	end

	def add_phone(phone)
		@phone << phone
	end
end