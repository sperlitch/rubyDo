require_relative '../../entities/task'

describe Task do
  
	describe 'self.shape' do
		it 'should return the Task object shape' do
			Task.shape.should eq text: String, user_id: Fixnum, id:Fixnum
		end
	end

	describe '#initialize' do
		it 'should populate with valid input' do
			input = { id: 1, user_id: 1, text: 'make me a sandwich' }
			task = Task.new input
			task.to_hash.should eq id: 1, user_id: 1, text: 'make me a sandwich'
		end

		it 'should raise an error with invalid input' do
				input = { id: nil, user_id: nil, text: nil}
				expect { Task.new input }.to raise_error Obvious::TypeError
		end
	end

			
end
