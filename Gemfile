source "https://rubygems.org"

ruby "3.1.2"

gem "rails", "~> 7.1.2"

gem "sprockets-rails"

gem "sqlite3", "~> 1.4"

gem "puma", ">= 5.0"

gem "jsbundling-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "cssbundling-rails"

gem "jbuilder"

# gem "redis", ">= 4.0.1"

# gem "kredis"

# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

gem "bootsnap", require: false

# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem 'rspec-rails', '~> 6.1'
end

group :development do
  gem "web-console"

  # gem "rack-mini-profiler"

  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
