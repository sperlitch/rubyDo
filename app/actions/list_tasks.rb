require_relative '../entities/task'

class ListTasks

	def initialize task_jack
		@task_jack = task_jack
	end

	def execute
		task_data = @task_jack.list
		validate task_data
		task_data
	end

	def validate task_data
		task_data.each do |entry|
			task = Task.new entry
		end
	end

end
