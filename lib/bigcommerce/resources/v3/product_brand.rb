# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class ProductBrand < Resource
      include Bigcommerce::ResourceActions.new(uri: 'catalog/brands/%d')

      property :id
      property :name
      property :page_title
      property :meta_keywords
      property :meta_description
      property :search_keywords
      property :image_url
      property :custom_url
    end
  end
end
