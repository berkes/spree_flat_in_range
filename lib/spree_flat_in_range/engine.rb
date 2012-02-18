module SpreeFlatInRange
  class Engine < Rails::Engine
    engine_name 'spree_flat_in_range'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    initializer "spree.register.calculators" do |app|
      require 'calculator/flat_in_range'

      app.config.spree.calculators.shipping_methods << Calculator::PostalService
    end
    config.to_prepare &method(:activate).to_proc
  end
end
