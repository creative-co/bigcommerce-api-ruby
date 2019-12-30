# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class ProductImage < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%s/images/%s')

      property :id
      property :product_id

      property :image_file
      property :is_thumbnail

      property :sort_order
      property :description
      property :image_url
      property :url_zoom
      property :url_standard
      property :url_thumbnail
      property :url_tiny
      property :date_modified
    end
  end
end
