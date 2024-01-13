# frozen_string_literal: true

require 'bigcommerce/resources/v3/product_modifier_value.rb'

module Bigcommerce
  module V3
    class ProductModifier < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'catalog/products/%s/modifiers/%s')
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :product_id
      property :name
      property :display_name
      property :type
      property :required
      property :sort_order
      property :config
      property :option_values, coerce: Array[Bigcommerce::V3::ProductModifierValue]
    end
  end
end
