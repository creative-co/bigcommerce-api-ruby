require 'bigcommerce/request'
require 'bigcommerce/resource_actions'
require 'bigcommerce/subresource_actions'

module Bigcommerce
  class Resource < Hashie::Trash
    include Hashie::Extensions::MethodAccess
    include Hashie::Extensions::IgnoreUndeclared
    include Hashie::Extensions::Dash::Coercion
    # include Hashie::Extensions::Coercion
    include Hashie::Extensions::MergeInitializer
  end
end
