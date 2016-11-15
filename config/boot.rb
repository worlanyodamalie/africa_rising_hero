<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
>>>>>>> 92b8ccc04b504aaa0d2b14e313a2fd4f8d077aed

require 'bundler/setup' # Set up gems listed in the Gemfile.
