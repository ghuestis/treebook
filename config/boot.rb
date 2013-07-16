require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require_relative('../app/assets/Loki/data_sanitation.rb')
require_relative('../app/assets/Loki/storycreator.rb')
require_relative('../app/assets/Loki/Lowki.rb')
