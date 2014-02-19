require_relative '../app/contracts/task_jack_contract'
require_relative 'fs_plug'

class TaskJack < TaskJackContract
	def initialize plug = nil
		case plug
		when :fs
			@plug = FsPlug.new 'data/tasks.json'
		else :fs
			@plug = FsPlug.new 'data/tasks.json'
		end
	end

	def save input
		@plug.save input
	end
end
