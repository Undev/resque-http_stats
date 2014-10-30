require 'bundler/setup'
Bundler.require

require "minitest/autorun"

Dir[File.expand_path('../fixtures/*.rb', __FILE__)].each { |f| require f }