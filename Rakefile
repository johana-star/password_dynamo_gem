# based on [Capybara's Rakefile](https://github.com/softace/capybara/blob/fc15bebf383778cb34dc5a80df8eea3ef7c0ec9c/Rakefile)

require 'rubygems'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

task :default => [:spec, :cucumber]

desc 'Run all cucumber scenarios'
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format progress}
end

desc "Run all spec examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
end
