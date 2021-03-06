# frozen_string_literal: true

require 'open-uri'
require 'nokogiri'
require 'pry'
require 'rubocop'
require_relative 'barnes_and_noble_bestsellers/version'
require_relative 'barnes_and_noble_bestsellers/cli_bestsellers'
require_relative 'barnes_and_noble_bestsellers/scraper'
require_relative 'barnes_and_noble_bestsellers/book'

module BarnesAndNobleBestsellers
  class Error < StandardError; end
  # Your code goes here...
end
