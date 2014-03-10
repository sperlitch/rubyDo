require_relative '../../../../app/actions/create_task'
require_relative '../../../../external/task_jack'

class TaskController < ActionController::Base
	protect_from_forgery

	def create
		if request.post
			create_task = CreateTask.new TaskJack.new
			@task = create_task.execute with_user_id: params[:user_id].to_i, and_text: params[:text]
			redirect_to '/'
		end
	end

end
