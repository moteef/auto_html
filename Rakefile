require 'rubygems'
require 'bundler'
Bundler.setup :default, :development

require 'rake/testtask'

desc 'Default: run tests'
task :default => :test

desc 'Test AutoHtml'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*_test.rb'
  t.warning = false
end
