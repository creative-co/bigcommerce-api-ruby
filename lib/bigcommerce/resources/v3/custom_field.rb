# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class CustomField < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%d/custom-fields/%d')

      property :id
      property :product_id
      property :name
      property :value
    end
  end
end
