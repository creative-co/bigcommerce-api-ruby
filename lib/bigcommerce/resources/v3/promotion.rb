require 'bigcommerce/resources/v3/promotions/customer.rb'
require 'bigcommerce/resources/v3/promotions/notification.rb'
require 'bigcommerce/resources/v3/promotions/rule.rb'
require 'bigcommerce/resources/v3/promotions/shipping_address.rb'

module Bigcommerce
  module V3
    class Promotion < Resource
      include Bigcommerce::ResourceActions.new uri: 'promotions/%s'

      property :id, coerce: String
      property :redemption_type, coerce: String
      property :name, coerce: String
      property :customer, coerce: Bigcommerce::V3::Promotions::Customer
      property :rules, coerce: Array[Bigcommerce::V3::Promotions::Rule]
      property :current_uses, coerce: Integer
      property :max_uses, coerce: Integer
      property :status, coerce: String
      property :start_date, coerce: String
      property :end_date, coerce: String
      property :stop#, coerce: Boolean
      property :can_be_used_with_other_promotions#, coerce: Boolean
      property :currency_code, coerce: String
      property :notifications, coerce: Array[Bigcommerce::V3::Promotions::Notification]
      property :shipping_address, coerce: Bigcommerce::V3::Promotions::ShippingAddress
      property :schedule

      property :created_from
    end
  end
end
