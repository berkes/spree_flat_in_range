module Spree
  class Calculator::FlatInRange < Calculator
    preference :lower_boundry,    :decimal, :default => 0.0
    preference :upper_boundry,    :decimal, :default => 50.0
    preference :amount,           :decimal, :default => 5.0

    def self.description
      I18n.t(:flat_in_range)
    end

    def compute(object)
      sum = 0
      item_total = object.line_items.map(&:amount).sum
      if (item_total >= self.preferred_lower_boundry && item_total <= self.preferred_upper_boundry)
        return self.preferred_amount
      else
        return 0.0
      end
    end
  end
end
