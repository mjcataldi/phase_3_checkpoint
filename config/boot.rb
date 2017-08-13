ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# require 'rails/commands/server'

# module DefaultOptions
#   def default_options
#     super.merge!(Port: ENV['PORT'], Server: ENV['IP'])
#     # super.merge!(Port: ENV['PORT'])
#   end
# end

# Rails::Server.prepend(DefaultOptions)