# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_flat_in_range'
  s.version     = '0.1.0'
  s.summary     = 'Spree adjusmtent calculator for fixed rates within a range'
  s.description = '
    A Spree calculator to calculate fixed adjustments based on ranges.

    For example, **free shipping above $100, and $4.39 for all orders under $100**,
    would mean a range *from 0 to $99.99*, that *has a fixed shipping rate of $4.39*.
  '
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Bèr Kessels'
  s.email             = 'ber@webschuur.com'
  s.homepage          = 'https://github.com/berkes/spree_flat_in_range'

  s.files         = Dir['README.md', 'LICENSE', 'lib/*', 'app/**/*', 'config/**/*']
  s.test_files    = Dir['spec/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.0.0'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.7'
  s.add_development_dependency 'sqlite3'
end
