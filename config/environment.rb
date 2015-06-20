# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ENV['RAILS_ENV'] ||= 'production'
ENV["SECRET_KEY_BASE"] = '0deb6f354c37f7d81c288833e17a084956a0aff960ec17c7d474ac0e7e76d8caece246388daeebe20453129afb1e5eb8ac103303d61fdb068b0881d8eedc82f9'
