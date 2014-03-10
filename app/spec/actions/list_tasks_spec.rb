require_relative '../../actions/list_tasks'
require_relative '../doubles/task_jack_double'

describe ListTasks do

	it 'should get a list of tasks and return the hash value' do
		list_tasks = ListTasks.new TaskJackDouble.create :default
		result = list_tasks.execute
		result.should eq [
			{ user_id: 1, text: 'make me a sandwich', id: 1 }
		]
	end

end
