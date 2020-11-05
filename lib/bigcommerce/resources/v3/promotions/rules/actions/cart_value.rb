require 'bigcommerce/resources/v3/promotions/discount.rb'

module Bigcommerce
  module V3
    module Promotions
      module Rules
        module Actions
          class CartValue < Resource
            property :discount, coerce: Bigcommerce::V3::Promotions::Discount
          end
        end
      end
    end
  end
end
