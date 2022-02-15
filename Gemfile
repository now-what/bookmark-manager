# frozen_string_literal: true

source "https://rubygems.org"

gem 'sinatra'
gem 'sinatra-reloader'
gem 'webrick'
gem 'pg'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
end
