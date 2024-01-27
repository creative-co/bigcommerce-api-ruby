module Bigcommerce
  class SubresourceActions < ResourceActions
    def included(base)
      base.send(:include, Request.new(options[:uri]))
      base.extend(ClassMethods)
      options[:disable_methods] ||= []
      methods = ClassMethods.public_instance_methods & options[:disable_methods]
      methods.each { |name| base.send(:remove_method, name) }
    end

    module ClassMethods
      def all(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        get path.build(parent_id), params
      end

      def fetch_all(parent_id, params = {}, &block)
        raise ArgumentError if parent_id.nil?

        default_params = { limit: 250 }
        params = default_params.merge params

        response = raw_request(:get, path.build(parent_id), params.dup)
        meta = JSON.parse(response.body, symbolize_names: true)[:meta]
        result = build_response_object response

        if meta[:pagination]
          current_page = meta[:pagination][:current_page]
          total_pages = meta[:pagination][:total_pages]
          block.call(result, current_page, total_pages) if block_given?
          while current_page < total_pages
            current_page += 1
            page_result = all(parent_id, params.dup.merge(page: current_page))
            block.call(page_result, current_page, total_pages) if block_given?
            result += page_result
          end
        else
          block.call(result, 1, 1) if block_given?
        end
        result
      end

      def find(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        get path.build([parent_id, resource_id]), params
      end

      def create(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        post path.build(parent_id), params
      end

      def update(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        put path.build([parent_id, resource_id]), params
      end

      def destroy(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        delete path.build([parent_id, resource_id]), params
      end

      def destroy_all(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        delete path.build(parent_id), params
      end
    end
  end
end
