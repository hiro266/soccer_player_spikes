source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'slim-rails'
gem 'html2slim'
gem 'font-awesome-sass'
gem 'jquery-rails'

# gem 'mini_racer', platforms: :ruby
# gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'mini_magick', '~> 4.8'
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # rubocop
  gem 'rubocop'
  gem 'rails_best_practices'

  #error
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-byebug'

  #test
  gem 'rspec-rails'
  gem 'webdrivers'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]