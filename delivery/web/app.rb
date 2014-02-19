require 'sinatra'
require 'slim'
require 'sequel'

require_relative '../../app/actions/create_task'
require_relative '../../external/task_jack'

set :slim, :pretty => true

DB = Sequel.connect 'mysql://127.0.0.1:3306/todo?user=root'

get '/:user/create-task' do
	slim :create_task
end

post '/:user/create-task' do
	create_task = CreateTask.new TaskJack.new
	@task = create_task.execute with_user_id: params[:user_id].to_i, and_text: params[:text]
	redirect '/'
end
