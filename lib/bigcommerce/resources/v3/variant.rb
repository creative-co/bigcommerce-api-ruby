# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class Variant < Resource
      include Bigcommerce::ResourceActions.new uri: 'catalog/variants/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind
      # include Hashie::Extensions::DeepFetch
      property :id
      property :product_id
      property :cost_price
      property :price
      property :sale_price
      property :retail_price
      property :weight
      property :width
      property :depth
      property :height
      property :is_free_shipping
      property :fixed_cost_shipping_price
      property :purchasing_disabled
      property :purchasing_disabled_message
      property :upc
      property :inventory_level
      property :inventory_warning_level
      property :bin_picking_number
      property :sku
      property :sku_id
      property :option_values, coerce: Array[Bigcommerce::V3::OptionValue]
      property :calculated_price
    end
  end
end
