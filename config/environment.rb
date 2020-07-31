# require '../lib/version.rb'

module RubyProject
  class Error < StandardError; end
  # Your code goes here...
end
require 'pry'
require 'httparty'

require 'dotenv/load'
require "bundler/setup"
Bundler.require

require_relative '../lib/cli.rb'
require_relative '../lib/api.rb'
require_relative '../lib/photos.rb'