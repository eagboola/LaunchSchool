desc 'Say hello'
task :hello do
  puts "Hello there. This is the `hello` task."  # block of Ruby code
end

desc 'Say goodbye'
task :bye do
  puts 'Bye-bye!'  # block of Ruby code
end

desc 'Do everything'
task :default => [:hello, :bye]  # list of dependencies

