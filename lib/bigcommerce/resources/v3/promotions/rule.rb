require 'bigcommerce/resources/v3/promotions/rules/action.rb'
require 'bigcommerce/resources/v3/promotions/rules/condition.rb'

module Bigcommerce
  module V3
    module Promotions
      class Rule < Resource
        property :apply_once#, coerce: Boolean
        property :stop#, coerce: Boolean

        property :action, coerce: Bigcommerce::V3::Promotions::Rules::Action
        property :condition, coerce: Bigcommerce::V3::Promotions::Rules::Condition
      end
    end
  end
end
