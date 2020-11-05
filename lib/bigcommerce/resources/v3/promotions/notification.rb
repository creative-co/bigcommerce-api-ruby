module Bigcommerce
  module V3
    module Promotions
      class Notification < Resource
        property :content, coerce: String
        property :type, coerce: String
        property :locations, coerce: Array[String]
      end
    end
  end
end
