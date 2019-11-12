# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class ProductMetafield < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%d/metafields/%d')
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :permission_set
      property :namespace
      property :key
      property :value
      property :description
      property :resource_type
      property :resource_id
      property :created_at
      property :updated_at
      # property :is_free_shipping
      # property :fixed_cost_shipping_price
      # property :purchasing_disabled
      # property :purchasing_disabled_message
      # property :upc
      # property :inventory_level
      # property :inventory_warning_level
      # property :bin_picking_number
      # property :sku
      # property :sku_id
      # property :option_values, coerce: Array[Bigcommerce::V3::OptionValue]

      # property :calculated_price
    end
  end
end
