require 'obvious'
require_relative '../entities/task'

class TaskJackContract < Contract
 
	contract_for :save, {
		:input => Task.shape,
		:output => Task.shape
	}

end
