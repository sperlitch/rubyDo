require 'obvious'
require_relative '../entities/task'

class TaskJackContract < Contract
 
	contract_for :save, {
		:input => Task.shape,
		:output => Task.shape
	}

#	contract_for :list, {
#		input: nil,
#		output: [ Task.shape ]
#	}

#    def self.contract_for method, contract
#      method_alias    = "#{method}_alias".to_sym
#      method_contract = "#{method}_contract".to_sym
#
#      define_method method_contract do |*args|
#        input = args[0]
#        call_method method_alias, input, contract[:input], contract[:output]
#      end
#
#      contracts( *contract_list, method )
#    end

end
