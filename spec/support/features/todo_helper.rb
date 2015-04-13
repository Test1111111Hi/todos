module Features
	def create_todo(todo_title)
		click_on "Add a new todo"
		fill_in "Title", with: todo_title
		click_on "Submit"
	end

	def display_todo text
		 have_css '.todos li', text: text
	end

	def display_completed_todo text
		 have_css '.todos li.completed', text: text
	end

	def display_incomplete_todo text
		 have_css '.todos li.incompleted', text: text
	end
end