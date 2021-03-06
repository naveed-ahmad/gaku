source 'http://production.s3.rubygems.org'

unless ENV['TRAVIS']
  group :development do
    gem 'guard'
    gem 'rubocop'
    gem 'guard-rspec'
    gem 'guard-bundler'
    gem 'guard-rubocop'
  end
end

group :development, :production do
  gem 'localeapp'
end

group :test do
  gem 'rspec-rails',              '~> 2.14.1'
  gem 'factory_girl_rails',       '~> 4.4.0'
  gem 'database_cleaner',         '~> 1.2'
  gem 'shoulda-matchers',         '~> 2.5.0'
  gem 'simplecov'
  gem 'coveralls', require: false
end

gemspec
