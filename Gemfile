source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rspec-rails', '~> 3.9.0'
gem 'searchkick', '~> 4.1.0'
gem 'rest-client', '~> 2.1.0'
gem 'elasticsearch-rails', '~> 7.0.0'
gem 'jsonapi-resources', '0.9.0'
gem 'jsonapi-utils', '0.7.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.12.2'
  gem 'dotenv-rails', '~> 2.7.5'
  gem 'annotate', '~> 3.0.2'
  gem 'shoulda-matchers', '~> 4.1.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
