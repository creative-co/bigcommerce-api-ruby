module Bigcommerce
  module V3
    module Promotions
      class Customer < Resource
        property :minimum_order_count, coerce: Integer
        property :group_ids, coerce: Array[Integer]
      end
    end
  end
end
