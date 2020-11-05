require 'bigcommerce/resources/v3/promotions/rules/actions/cart_value.rb'
require 'bigcommerce/resources/v3/promotions/rules/actions/cart_items.rb'
require 'bigcommerce/resources/v3/promotions/rules/actions/gift_item.rb'
require 'bigcommerce/resources/v3/promotions/rules/actions/fixed_price_set.rb'
require 'bigcommerce/resources/v3/promotions/rules/actions/shipping.rb'
module Bigcommerce
  module V3
    module Promotions
      module Rules
        class Action < Resource
          property :cart_value, coerce: Bigcommerce::V3::Promotions::Rules::Actions::CartValue
          property :cart_items, coerce: Bigcommerce::V3::Promotions::Rules::Actions::CartItems
          property :gift_item, coerce: Bigcommerce::V3::Promotions::Rules::Actions::GiftItem
          property :fix_price_set, coerce: Bigcommerce::V3::Promotions::Rules::Actions::FixedPriceSet
          property :shipping, coerce: Bigcommerce::V3::Promotions::Rules::Actions::Shipping
        end
      end
    end
  end
end
