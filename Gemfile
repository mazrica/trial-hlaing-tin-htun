source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'rails', '6.1.4'
gem 'mysql2'
gem 'puma'
gem 'bootsnap', require: false
gem 'jbuilder'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'database_rewinder'
  gem 'factory_bot_rails'
  gem 'rspec-json_matcher'
  gem 'rspec-rails'
  gem 'rspec-request_describer'
end

group :development do
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end
