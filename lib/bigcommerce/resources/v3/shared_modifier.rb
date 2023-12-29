# frozen_string_literal: true

require 'bigcommerce/resources/v3/shared_modifier_value.rb'

module Bigcommerce
  module V3
    class SharedModifier < Resource
      include Bigcommerce::ResourceActions.new uri: 'catalog/shared-modifiers/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :name
      property :storefront_name
      property :type
      property :option_type
      property :values, coerce: Array[Bigcommerce::V3::SharedModifierValue]
      property :config
      property :required
      property :associated_products_qty
    end
  end
end
