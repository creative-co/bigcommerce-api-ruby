# frozen_string_literal: true

module Bigcommerce
  module V3
    class SharedModifierValue < Resource
      include Bigcommerce::SubresourceActions.new uri: 'catalog/shared-modifiers/%s/values/%s'

      property :id
      property :label
      property :sort_order
      property :value_data
      property :is_default
    end
  end
end
