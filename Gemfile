source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'
gem 'geocoder'


ruby "2.3.0"

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'guard', '~> 2.14.0'
  gem 'guard-rspec', '~> 4.7.2' 
  gem 'guard-cucumber', '~> 2.1.2'
end

group :test do
  gem 'capybara', '2.7.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
