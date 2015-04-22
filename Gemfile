# source 'https://code.stripe.com'
source 'https://rubygems.org'
ruby "2.1.1"
gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem "figaro"
gem "mini_magick"
gem 'devise'
gem 'carrierwave'
gem 'carrierwave-dropbox'
# gem 'stripe'
gem 'searchkick'

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  gem 'better_errors' 
  gem 'binding_of_caller'
end

group :doc do
  gem 'sdoc', require: false
end