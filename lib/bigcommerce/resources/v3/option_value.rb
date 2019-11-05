# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class OptionValue < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%d/options/%d/values/%d')

      property :id

      property :is_default

      property :label
      property :sort_order
      property :value_data
    end
  end
end
