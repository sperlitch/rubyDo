require_relative '../entities/task'

class CreateTask
	include Obvious::Obj

  def initialize task_jack
    @task_jack = task_jack
  end

  define :execute, with_user_id: [:user_id, Fixnum], and_text: [:text, String] do |input|
		input[:id] = -1
    task = Task.new input
    result = @task_jack.save task.to_hash
		result
  end

end
