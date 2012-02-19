# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_flat_in_range'
  s.version     = '1.0.0'
  s.summary     = 'TODO: Add gem summary here'
  s.description = 'TODO: Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Bèr Kessels'
  s.email             = 'ber@webschuur.com'
  # s.homepage          = 'http://www.spreecommerce.com'

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
