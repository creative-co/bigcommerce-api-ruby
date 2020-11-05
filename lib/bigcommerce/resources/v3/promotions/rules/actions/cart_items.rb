require 'bigcommerce/resources/v3/promotions/item_matcher.rb'
require 'bigcommerce/resources/v3/promotions/discount.rb'

module Bigcommerce
  module V3
    module Promotions
      module Rules
        module Actions
          class CartItems < Resource
            property :discount, coerce: Bigcommerce::V3::Promotions::Discount
            property :as_total
            property :items, coerce: Bigcommerce::V3::Promotions::ItemMatcher
            property :include_items_considered_by_condition
            property :exclude_items_on_sale
            property :strategy, coerce: String
            property :quantity, coerce: Integer
          end
        end
      end
    end
  end
end
