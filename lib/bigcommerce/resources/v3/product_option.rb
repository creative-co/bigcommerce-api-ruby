# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class ProductOption < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%s/options/%s')

      property :id

      property :product_id

      property :display_name
      property :type
      property :config
      property :sort_order
      property :option_values
      property :name
    end
  end
end
