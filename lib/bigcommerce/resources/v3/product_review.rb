# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

module Bigcommerce
  module V3
    class ProductReview < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%d/reviews/%d')

      property :id
      property :title
      property :text
      property :status

      property :rating
      property :email
      property :name
      property :date_reviewed
      property :product_id
      property :date_created
      property :date_modified
    end
  end
end
