require 'bundler/gem_tasks'

desc 'Say hello'
task :hello do
  puts "Hello there. This is the 'hello' task."
end

desc 'Run tests'
task :test do
  sh 'ruby ./test/todo_list_project_test.rb'
end

desc 'Run tests'
task :default => :test
