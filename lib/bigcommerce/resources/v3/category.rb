# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class Category < Resource
      include Bigcommerce::ResourceActions.new uri: 'catalog/categories/%s'

      property :id
      property :parent_id
      property :name
      property :description

      property :views
      property :sort_order
      property :page_title
      property :search_keywords
      property :meta_keywords
      property :meta_description
      property :layout_file
      property :is_visible
      property :default_product_sort
      property :image_url
      property :custom_url
    end
  end
end
