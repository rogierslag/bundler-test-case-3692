source 'https://rubygems.org'

gem 'rails',        '4.1.11'
gem 'sass-rails',   '~> 4.0.3'
gem 'uglifier',     '~> 2.7.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jbuilder',     '~> 2.2'

gem 'sinatra', :require => nil
gem 'oj_mimic_json'
gem 'oj'
gem 'multipart-post'
gem 'execjs'
gem 'therubyracer'
gem 'capybara'
gem 'pundit'
gem 'pg'
gem 'sidekiq'
gem 'sidekiq-rate-limiter', :require => 'sidekiq-rate-limiter/server'
gem 'sidekiq-limit_fetch'
gem 'aws-sdk', '~> 2.0'
gem 'mail'
gem 'bcrypt', '~> 3.1.9'
gem 'squeel', '~> 1.2.2' # Improves sql syntax
gem 'font-awesome-sass', '~> 4.3.0'
gem 'ideal-payment',  '~> 1.0.2'
gem 'buckaroo'
gem 'mollie-api-ruby', '>= 1.1.2'
gem 'sepa_king'
gem 'passbook'
gem 'gettext_i18n_rails'
gem 'koala', '~> 2.0.0'
gem 'validates_email_format_of'
gem 'paper_trail'
gem 'logstasher'
gem 'logstash-logger'
gem 'ruby-filemagic', '~> 0.6.3'
gem 'image_size', '~> 1.4.1'

group :development do
  gem 'annotate'
  gem 'rails-erd'
  gem 'bullet'
end

group :development, :test do
  gem 'gettext', '>=3.0.2', require: false
  gem 'pry'
  gem 'thin'
  gem 'coffee-rails-source-maps'
  gem 'sqlite3'
  gem 'poltergeist'
  gem 'konacha'
  gem 'sinon-rails'
  gem 'sinon-chai-rails'
  gem 'faker',                 '~> 1.4.3'
  gem 'parallel_tests'
end

group :test do
  gem 'codeclimate-test-reporter'
  gem 'rspec-rails',           '~> 3.1.0'
  gem 'rspec_junit_formatter', '~> 0.2.0'
  gem 'simplecov'
  gem 'simplecov-csv'
  gem 'shoulda-matchers',      '~> 2.7.0'
  gem 'factory_girl_rails',    '~> 4.5.0', require: false
end

group :deploy do
  gem 'render_anywhere', '0.0.11', require: false
end

group :staging, :production do
  gem 'puma'
end

group :development, :test, :deploy do
  gem 'brakeman', require: false
  gem 'dawnscanner'
end

group :doc do
  gem 'sdoc', require: false
end
