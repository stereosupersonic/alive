task :start_server do
  system "bundle exec thin start"
end

task :default => :build

desc 'Run rspec + cucumber'
task :build => [:spec, :cucumber] 

task :push do
  system "git push heroku master"
end
