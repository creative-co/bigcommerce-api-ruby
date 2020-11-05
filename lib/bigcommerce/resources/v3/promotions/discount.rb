module Bigcommerce
  module V3
    module Promotions
      class Discount < Resource
        property :fixed_amount, coerce: String
        property :percentage_amount, coerce: Integer
      end
    end
  end
end
