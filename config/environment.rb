# require '../lib/version.rb'

module RubyProject
  class Error < StandardError; end
  # Your code goes here...
end
require 'pry'
require 'Nokogiri'


require "bundler/setup"
Bundler.require

require_relative '../lib/cli.rb'
require_relative '../lib/scraper.rb'
require_relative '../lib/breaking.rb'