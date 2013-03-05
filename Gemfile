source 'http://rubygems.org'

group :test do
  gem "spree_auth"
  gem 'ffaker'
end

group :development do
  if RUBY_VERSION < "1.9"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end

gemspec

