# frozen_string_literal: true

module Bigcommerce
  class ResourceActions < Module
    attr_reader :options

    def initialize(options = {})
      @options = options
      tap do |mod|
        mod.define_singleton_method :_options do
          mod.options
        end
      end
    end

    def included(base)
      base.send(:include, Request.new(options[:uri]))
      base.extend(ClassMethods)
      options[:disable_methods] ||= []
      methods = ClassMethods.public_instance_methods & options[:disable_methods]
      methods.each { |name| base.send(:remove_method, name) }
    end

    module ClassMethods
      def all(params = {})
        get path.build, params
      end

      def fetch_all(params = {}, &block)
        default_params = { limit: 250 }
        params = default_params.merge params

        response = raw_request(:get, path.build, params.dup)
        meta = JSON.parse(response.body, symbolize_names: true)[:meta]
        result = build_response_object response

        if meta[:pagination]
          current_page = meta[:pagination][:current_page]
          total_pages = meta[:pagination][:total_pages]
          block.call(result, current_page, total_pages) if block_given?
          while current_page < total_pages
            current_page += 1
            page_result = all(params.dup.merge(page: current_page))
            block.call(page_result, current_page, total_pages) if block_given?
            result += page_result
          end
        else
          block.call(result, 1, 1) if block_given?
        end
        result
      end

      def find(resource_id, params = {})
        raise ArgumentError if resource_id.nil?

        get path.build(resource_id), params
      end

      def create(params = {})
        post path.build, params
      end

      def update(resource_id, params = {})
        raise ArgumentError if resource_id.nil?

        put path.build(resource_id), params
      end

      def update_batch(params = {})
        # raise ArgumentError if resource_id.nil?

        put path.build, params
      end

      def destroy(resource_id, params = {})
        raise ArgumentError if resource_id.nil?

        delete path.build(resource_id), params
      end

      def destroy_all(params = {})
        delete path.build, params
      end
    end
  end
end
