require_relative '../../actions/create_task'
require_relative '../doubles/task_jack_double'

describe CreateTask do

  it 'should create a task' do
		create_task = CreateTask.new TaskJackDouble.create :default
		result = create_task.execute with_user_id: 1, and_text: 'make me a sandwich'
		result.should eq user_id: 1, text: 'make me a sandwich', id: 1
	end 

end
        