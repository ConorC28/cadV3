source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# Gem for Ruby - Added because of heroku deployment issue
ruby '2.2.6'
# Gem for jQuery
gem 'jquery-rails'
# Gem for bootstrap
gem 'bootstrap-sass'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use jdbcsqlite3 as the database for Act
#gem 'activerecord-jdbc-adapter', :github => 'jruby/activerecord-jdbc-adapter'
#gem 'activerecord-jdbcmysql-adapter', :github => 'jruby/activerecord-jdbc-adapter'
#gem 'activerecord-jdbcsqlite3-adapter'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
#gem 'sqlite3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyrhino'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'pg'
gem'rails_12factor'
# Added to allow datetimepicker
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap-datepicker-rails'
# __________________________________________________________________________________Edit to push to Heroku
gem 'execjs'

group :development do
	gem 'sqlite3'
end

group :production do	
	gem 'pg'
	gem'rails_12factor'
end
	
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
