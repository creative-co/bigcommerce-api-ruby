# frozen_string_literal: true

module Bigcommerce
  module V3
    class ProductModifierValue < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%s/modifiers/%s/values/%s')

      property :id
      property :option_id
      property :is_default
      property :label
      property :sort_order
      property :value_data
      property :adjusters
    end
  end
end
