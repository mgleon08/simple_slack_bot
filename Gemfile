source 'http://rubygems.org'

gem 'slack-ruby-bot'
gem 'faye-websocket'
gem 'dotenv'
gem 'giphy', require: false if ENV.key?('WITH_GIPHY')

gem 'puma'
gem 'sinatra'

group :development, :test do
  gem 'rake', '~> 10.4'
  gem 'rubocop', '0.31.0'
  gem 'foreman'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'vcr'
  gem 'webmock'
end
