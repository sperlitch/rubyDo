#!/usr/bin/env ruby

require 'commander/import'

require_relative '../../app/actions/create_task'

require_relative '../../external/task_jack'

program :name, 'Todo'
program :version, '1.0'
program :description, 'The cli version of Todo'

command :create do |c|
	c.action do |args, options|
		entity = args[0]
		create_task = CreateTask.new TaskJack.new
		task = create_task.execute with_user_id: args[1].to_i, and_text: args[2]
		puts 'Task:'
		puts "#{task[:text]} - task id: #{task[:id]} user id: #{task[:user_id]}"
	end
end
