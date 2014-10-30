require 'bundler/setup'
Bundler.require

require "minitest/autorun"
require "resque"
Resque.inline = true

Dir[File.expand_path('../fixtures/*.rb', __FILE__)].each { |f| require f }
