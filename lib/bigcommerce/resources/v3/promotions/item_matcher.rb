module Bigcommerce
  module V3
    module Promotions
      class ItemMatcher < Resource
        class ProductOption < Resource
          property :type, coerce: String
          property :name, coerce: String
          property :values, coerce: Array[String]
        end
        property :brands, coerce: Array[Integer]
        property :categories, coerce: Array[Integer]
        property :products, coerce: Array[Integer]
        property :variants, coerce: Array[Integer]
        property :product_option, coerce: ProductOption
        property :and, coerce: Array[Bigcommerce::V3::Promotions::ItemMatcher]
        property :or, coerce: Array[Bigcommerce::V3::Promotions::ItemMatcher]
        property :not, coerce: Bigcommerce::V3::Promotions::ItemMatcher
      end
    end
  end
end
