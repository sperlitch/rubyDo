require_relative '../../contracts/task_jack_contract'
require_relative '../doubles/task_jack_double'

describe TaskJackContract do
  
  describe '.save_contract' do
    it 'should save data with valid input' do
			input = { user_id: 1, text: 'make me a sandwich', id: 1 }
			jack = TaskJackDouble.create :default
			result = jack.save input
			result.should eq user_id: 1, text: 'make me a sandwich', id: 1
		end

    it 'should raise an error with invalid input' do
			input = { }
			jack = TaskJackDouble.create :default
			expect { jack.save_contract input }.to raise_error ContractInputError
		end

    it 'should raise an error with invalid output' do
			input = { user_id: 1, text: 'make me a sandwich', id: 1 }
			jack = TaskJackDouble.create :bad_output
			expect { jack.save input }.to raise_error ContractOutputError
		end

  end
    
end
