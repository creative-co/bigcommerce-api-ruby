require 'bigcommerce/resources/v3/promotions/item_matcher.rb'

module Bigcommerce
  module V3
    module Promotions
      module Rules
        module Actions
          class FixedPriceSet < Resource
            property :quantity, coerce: Integer
            property :fixed_price, coerce: String
            property :strategy, coerce: String
            property :exclude_items_on_sale

            property :items, coerce: Bigcommerce::V3::Promotions::ItemMatcher
          end
        end
      end
    end
  end
end
