module Bigcommerce
  module V3
    class PriceListRecord < Resource
      include Bigcommerce::SubresourceActions.new uri: 'pricelists/%d/records'

      property :calculated_price
      property :product_id
      property :variant_id
      property :price_list_id
      property :sku
      property :currency
      property :price
      property :sale_price
      property :retail_price
      property :map_price
      property :bulk_pricing_tiers, coerce: Array

    end
  end
end

