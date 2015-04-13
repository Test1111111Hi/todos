class TodosController < ApplicationController
	before_filter :autenticate
	def index
		@todos = current_user.todos
	end

	def new
		@todo = Todo.new

	end

	def create
		current_user.todos.create(todo_parameter)
		redirect_to todos_path
	end

	private
	def todo_parameter
		params.require(:todo).permit(:title)
	end
end