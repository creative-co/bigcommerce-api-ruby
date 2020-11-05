require 'bigcommerce/resources/v3/promotions/rules/conditions/cart.rb'

# require 'bigcommerce/resources/v3/promotions/rules/actions/shipping.rb'
module Bigcommerce
  module V3
    module Promotions
      module Rules
        class Condition < Resource
          property :cart, coerce: Bigcommerce::V3::Promotions::Rules::Conditions::Cart
          property :and, coerce: Array[Condition]
          property :or, coerce: Array[Condition]
          property :not, coerce: Condition
        end
      end
    end
  end
end
