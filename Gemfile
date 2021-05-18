# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.5.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "aws-sdk", "~> 3"
gem "aws-sdk-s3", "~> 1.0.0.rc2"
gem "dotenv-rails", groups: %i(development test)
gem "friendly_id", "~> 5.1.0"
gem "jquery-rails"
gem "loofah", ">= 2.2.3"
gem "mathjax-rails"
gem "nokogiri", ">= 1.10.4"
gem "paperclip"
gem "pg"
gem "puma", "~> 4.3"
gem "rack", ">= 2.0.6"
gem "rails", ">= 5.1.6.2"
gem "redcarpet"
gem "sass-rails", "~> 5.0"
gem "scrollreveal-rails"
gem "slim-rails"
gem "uglifier", ">= 1.3.0"
gem "validates_email_format_of"
gem "vital"
gem "webpacker"

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
  gem "capybara", "~> 2.13"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop"
  gem "selenium-webdriver"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)
