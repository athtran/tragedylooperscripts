source 'https://rubygems.org'
ruby "2.7.2"

gem 'rails', '5.0.2'
gem 'json', '>1.8.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass'
gem 'devise'
gem 'ransack'
gem "paperclip", "~> 4.2"
gem 'aws-sdk', '< 2.0'
gem 'ckeditor'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
	gem 'pg', "~>0.20"
	gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
