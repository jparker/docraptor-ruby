=begin
#DocRaptor

#A native client library for the DocRaptor HTML to PDF/XLS service.

OpenAPI spec version: 1.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module DocRaptor
  class DocApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDoc]
    def create_async_doc(doc, opts = {})
      data, _status_code, _headers = create_async_doc_with_http_info(doc, opts)
      data
    end

    # Creates a document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncDoc, Fixnum, Hash)>] AsyncDoc data, response status code and response headers
    def create_async_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.create_async_doc ...'
      end
      # verify the required parameter 'doc' is set
      if @api_client.config.client_side_validation && doc.nil?
        fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_async_doc"
      end
      # resource path
      local_var_path = '/async_docs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDoc')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_async_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def create_doc(doc, opts = {})
      data, _status_code, _headers = create_doc_with_http_info(doc, opts)
      data
    end

    # Creates a document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.create_doc ...'
      end
      # verify the required parameter 'doc' is set
      if @api_client.config.client_side_validation && doc.nil?
        fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_doc"
      end
      # resource path
      local_var_path = '/docs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a hosted document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDoc]
    def create_hosted_async_doc(doc, opts = {})
      data, _status_code, _headers = create_hosted_async_doc_with_http_info(doc, opts)
      data
    end

    # Creates a hosted document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncDoc, Fixnum, Hash)>] AsyncDoc data, response status code and response headers
    def create_hosted_async_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.create_hosted_async_doc ...'
      end
      # verify the required parameter 'doc' is set
      if @api_client.config.client_side_validation && doc.nil?
        fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_hosted_async_doc"
      end
      # resource path
      local_var_path = '/hosted_async_docs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDoc')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_hosted_async_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a hosted document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [DocStatus]
    def create_hosted_doc(doc, opts = {})
      data, _status_code, _headers = create_hosted_doc_with_http_info(doc, opts)
      data
    end

    # Creates a hosted document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocStatus, Fixnum, Hash)>] DocStatus data, response status code and response headers
    def create_hosted_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.create_hosted_doc ...'
      end
      # verify the required parameter 'doc' is set
      if @api_client.config.client_side_validation && doc.nil?
        fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_hosted_doc"
      end
      # resource path
      local_var_path = '/hosted_docs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_hosted_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Expires a previously created hosted doc.
    # @param id The download_id returned from status request or hosted document response.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def expire(id, opts = {})
      expire_with_http_info(id, opts)
      nil
    end

    # Expires a previously created hosted doc.
    # @param id The download_id returned from status request or hosted document response.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def expire_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.expire ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocApi.expire"
      end
      # resource path
      local_var_path = '/expire/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#expire\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Downloads a finished document.
    # @param id The download_id returned from an async status request or callback.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_async_doc(id, opts = {})
      data, _status_code, _headers = get_async_doc_with_http_info(id, opts)
      data
    end

    # Downloads a finished document.
    # @param id The download_id returned from an async status request or callback.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_async_doc_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.get_async_doc ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocApi.get_async_doc"
      end
      # resource path
      local_var_path = '/download/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#get_async_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check on the status of an asynchronously created document.
    # @param id The status_id returned when creating an asynchronous document.
    # @param [Hash] opts the optional parameters
    # @return [DocStatus]
    def get_async_doc_status(id, opts = {})
      data, _status_code, _headers = get_async_doc_status_with_http_info(id, opts)
      data
    end

    # Check on the status of an asynchronously created document.
    # @param id The status_id returned when creating an asynchronous document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocStatus, Fixnum, Hash)>] DocStatus data, response status code and response headers
    def get_async_doc_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocApi.get_async_doc_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocApi.get_async_doc_status"
      end
      # resource path
      local_var_path = '/status/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#get_async_doc_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
