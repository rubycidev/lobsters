# test/test_helper.rb

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Load Minitest framework
require 'minitest/reporters'
require 'minitest/spec'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # See http://guides.rubyonrails.org/core_guidelines.html#testing for more details.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
