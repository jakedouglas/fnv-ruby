require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  # dependencies defined in Gemfile
  gem.name     = "fnv"
  gem.summary  = "fnv1 and fnv1a hash functions in pure ruby"
  gem.email    = "jakecdouglas@gmail.com"
  gem.homepage = "https://github.com/jakedouglas/fnv"
  gem.authors  = ["Jake Douglas"]
  gem.license  = "MIT"
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :test

task :test do
  require "test/fnv_test.rb"
end
