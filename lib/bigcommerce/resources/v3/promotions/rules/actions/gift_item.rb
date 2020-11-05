module Bigcommerce
  module V3
    module Promotions
      module Rules
        module Actions
          class GiftItem < Resource
            property :quantity, coerce: Integer
            property :product_id, coerce: Integer
            property :variant_id, coerce: Integer
          end
        end
      end
    end
  end
end
