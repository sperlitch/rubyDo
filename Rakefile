task :rspec do
  sh 'rspec ./app -c'
end

task :server do
  sh 'cd delivery/web && bundle exec shotgun -o 0.0.0.0 -p 9393 ./app.rb '
end
