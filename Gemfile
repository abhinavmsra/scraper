source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'

gem 'httparty'

gem 'active_model_serializers'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'

  gem 'mysql2'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'faker' # Gem for generating fake data
  gem 'shoulda-matchers', require: false # Collection of testing matchers extracted from Shoulda
  gem 'database_cleaner' # Gem for setting strategies for cleaning databases.
  gem 'simplecov', require: false # Gem for Code coverage for Ruby 1.9+
  gem 'webmock' #Gem for stubbing and setting expectations on HTTP requests
  gem 'vcr' # Gem for recording test suite's HTTP interactions
  gem 'rails-controller-testing'
  gem 'factory_girl_rails'
end

gem 'pg', group: :production
gem 'rails_12factor', group: :production
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '2.3.0'
