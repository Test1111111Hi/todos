class CompletionsController < ApplicationController
	def create
		find_todo.complete!
		redirect_to todos_path
	end

	def destroy
		find_todo.incomplete!
		redirect_to todos_path
	end

	private
	def find_todo
		current_user.todos.find(params[:todo_id])
	end
end