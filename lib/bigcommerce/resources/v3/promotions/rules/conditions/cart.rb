require 'bigcommerce/resources/v3/promotions/item_matcher.rb'

module Bigcommerce
  module V3
    module Promotions
      module Rules
        module Conditions
          class Cart < Resource
            property :minimum_quantity, coerce: Integer
            property :minimum_spend, coerce: String
            property :items, coerce: Bigcommerce::V3::Promotions::ItemMatcher
          end
        end
      end
    end
  end
end
