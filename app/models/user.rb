class User
	def initialize email
		@email = email
	end

	def signed_in?
		@email
	end

	def todos
		Todo.where(email: @email)
	end
end