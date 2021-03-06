=begin
#DaDaPush Public API

#DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.

The version of the OpenAPI document: v1
Contact: contacts@dadapush.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.2

=end

require 'cgi'

module DaDaPushClient
  class DaDaPushMessageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # push Message to a Channel
    # <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    # @param body [MessagePushRequest] body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [ResultOfMessagePushResponse]
    def create_message(body, opts = {})
      data, _status_code, _headers = create_message_with_http_info(body, opts)
      data
    end

    # push Message to a Channel
    # &lt;h2&gt;Rate Limit:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;1 request per 1s&lt;/li&gt;&lt;li&gt;30 request per 1m&lt;/li&gt;&lt;li&gt;500 request per 1h&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;Result code/errmsg List:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;0: ok&lt;/li&gt;&lt;li&gt;1: server error&lt;/li&gt;&lt;li&gt;101: channel is exists&lt;/li&gt;&lt;li&gt;102: channel is not exists&lt;/li&gt;&lt;li&gt;103: channel token error&lt;/li&gt;&lt;li&gt;104: channel is not exists&lt;/li&gt;&lt;li&gt;105: message is not exists&lt;/li&gt;&lt;li&gt;204: bad request&lt;/li&gt;&lt;li&gt;205: permission deny&lt;/li&gt;&lt;li&gt;206: too many request, please after 5 minutes to try!&lt;/li&gt;&lt;li&gt;301: duplicate username/email&lt;/li&gt;&lt;li&gt;302: user is not exists&lt;/li&gt;&lt;li&gt;303: user password is error&lt;/li&gt;&lt;li&gt;304: client push token is error&lt;/li&gt;&lt;li&gt;305: user is disabled&lt;/li&gt;&lt;li&gt;306: your subscription is expired&lt;/li&gt;&lt;li&gt;307: user not subscribe channel&lt;/li&gt;&lt;/ul&gt;
    # @param body [MessagePushRequest] body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [Array<(ResultOfMessagePushResponse, Integer, Hash)>] ResultOfMessagePushResponse data, response status code and response headers
    def create_message_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DaDaPushMessageApi.create_message ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DaDaPushMessageApi.create_message"
      end
      # resource path
      local_var_path = '/api/v1/message'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-channel-token'] = opts[:'x_channel_token'] if !opts[:'x_channel_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'ResultOfMessagePushResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DaDaPushMessageApi#create_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete a Channel Message
    # <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    # @param message_id [Integer] messageId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [Result]
    def delete_message(message_id, opts = {})
      data, _status_code, _headers = delete_message_with_http_info(message_id, opts)
      data
    end

    # delete a Channel Message
    # &lt;h2&gt;Rate Limit:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;10 request per 1s&lt;/li&gt;&lt;li&gt;100 request per 1m&lt;/li&gt;&lt;li&gt;1000 request per 1h&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;Result code/errmsg List:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;0: ok&lt;/li&gt;&lt;li&gt;1: server error&lt;/li&gt;&lt;li&gt;101: channel is exists&lt;/li&gt;&lt;li&gt;102: channel is not exists&lt;/li&gt;&lt;li&gt;103: channel token error&lt;/li&gt;&lt;li&gt;104: channel is not exists&lt;/li&gt;&lt;li&gt;105: message is not exists&lt;/li&gt;&lt;li&gt;204: bad request&lt;/li&gt;&lt;li&gt;205: permission deny&lt;/li&gt;&lt;li&gt;206: too many request, please after 5 minutes to try!&lt;/li&gt;&lt;li&gt;301: duplicate username/email&lt;/li&gt;&lt;li&gt;302: user is not exists&lt;/li&gt;&lt;li&gt;303: user password is error&lt;/li&gt;&lt;li&gt;304: client push token is error&lt;/li&gt;&lt;li&gt;305: user is disabled&lt;/li&gt;&lt;li&gt;306: your subscription is expired&lt;/li&gt;&lt;li&gt;307: user not subscribe channel&lt;/li&gt;&lt;/ul&gt;
    # @param message_id [Integer] messageId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [Array<(Result, Integer, Hash)>] Result data, response status code and response headers
    def delete_message_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DaDaPushMessageApi.delete_message ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling DaDaPushMessageApi.delete_message"
      end
      # resource path
      local_var_path = '/api/v1/message/{messageId}'.sub('{' + 'messageId' + '}', CGI.escape(message_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-channel-token'] = opts[:'x_channel_token'] if !opts[:'x_channel_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Result' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DaDaPushMessageApi#delete_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get a Channel Message
    # <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    # @param message_id [Integer] messageId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [ResultOfMessageObject]
    def get_message(message_id, opts = {})
      data, _status_code, _headers = get_message_with_http_info(message_id, opts)
      data
    end

    # get a Channel Message
    # &lt;h2&gt;Rate Limit:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;10 request per 1s&lt;/li&gt;&lt;li&gt;100 request per 1m&lt;/li&gt;&lt;li&gt;1000 request per 1h&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;Result code/errmsg List:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;0: ok&lt;/li&gt;&lt;li&gt;1: server error&lt;/li&gt;&lt;li&gt;101: channel is exists&lt;/li&gt;&lt;li&gt;102: channel is not exists&lt;/li&gt;&lt;li&gt;103: channel token error&lt;/li&gt;&lt;li&gt;104: channel is not exists&lt;/li&gt;&lt;li&gt;105: message is not exists&lt;/li&gt;&lt;li&gt;204: bad request&lt;/li&gt;&lt;li&gt;205: permission deny&lt;/li&gt;&lt;li&gt;206: too many request, please after 5 minutes to try!&lt;/li&gt;&lt;li&gt;301: duplicate username/email&lt;/li&gt;&lt;li&gt;302: user is not exists&lt;/li&gt;&lt;li&gt;303: user password is error&lt;/li&gt;&lt;li&gt;304: client push token is error&lt;/li&gt;&lt;li&gt;305: user is disabled&lt;/li&gt;&lt;li&gt;306: your subscription is expired&lt;/li&gt;&lt;li&gt;307: user not subscribe channel&lt;/li&gt;&lt;/ul&gt;
    # @param message_id [Integer] messageId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [Array<(ResultOfMessageObject, Integer, Hash)>] ResultOfMessageObject data, response status code and response headers
    def get_message_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DaDaPushMessageApi.get_message ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling DaDaPushMessageApi.get_message"
      end
      # resource path
      local_var_path = '/api/v1/message/{messageId}'.sub('{' + 'messageId' + '}', CGI.escape(message_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-channel-token'] = opts[:'x_channel_token'] if !opts[:'x_channel_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultOfMessageObject' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DaDaPushMessageApi#get_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get Message List
    # <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    # @param page [Integer] greater than 1
    # @param page_size [Integer] range is 1,50
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [ResultOfPageResponseOfMessageObject]
    def get_messages(page, page_size, opts = {})
      data, _status_code, _headers = get_messages_with_http_info(page, page_size, opts)
      data
    end

    # get Message List
    # &lt;h2&gt;Rate Limit:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;1 request per 1s&lt;/li&gt;&lt;li&gt;45 request per 1m&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;Result code/errmsg List:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;0: ok&lt;/li&gt;&lt;li&gt;1: server error&lt;/li&gt;&lt;li&gt;101: channel is exists&lt;/li&gt;&lt;li&gt;102: channel is not exists&lt;/li&gt;&lt;li&gt;103: channel token error&lt;/li&gt;&lt;li&gt;104: channel is not exists&lt;/li&gt;&lt;li&gt;105: message is not exists&lt;/li&gt;&lt;li&gt;204: bad request&lt;/li&gt;&lt;li&gt;205: permission deny&lt;/li&gt;&lt;li&gt;206: too many request, please after 5 minutes to try!&lt;/li&gt;&lt;li&gt;301: duplicate username/email&lt;/li&gt;&lt;li&gt;302: user is not exists&lt;/li&gt;&lt;li&gt;303: user password is error&lt;/li&gt;&lt;li&gt;304: client push token is error&lt;/li&gt;&lt;li&gt;305: user is disabled&lt;/li&gt;&lt;li&gt;306: your subscription is expired&lt;/li&gt;&lt;li&gt;307: user not subscribe channel&lt;/li&gt;&lt;/ul&gt;
    # @param page [Integer] greater than 1
    # @param page_size [Integer] range is 1,50
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_channel_token see: https://www.dadapush.com/channel/list
    # @return [Array<(ResultOfPageResponseOfMessageObject, Integer, Hash)>] ResultOfPageResponseOfMessageObject data, response status code and response headers
    def get_messages_with_http_info(page, page_size, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DaDaPushMessageApi.get_messages ...'
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling DaDaPushMessageApi.get_messages"
      end
      # verify the required parameter 'page_size' is set
      if @api_client.config.client_side_validation && page_size.nil?
        fail ArgumentError, "Missing the required parameter 'page_size' when calling DaDaPushMessageApi.get_messages"
      end
      # resource path
      local_var_path = '/api/v1/messages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = page
      query_params[:'pageSize'] = page_size

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-channel-token'] = opts[:'x_channel_token'] if !opts[:'x_channel_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultOfPageResponseOfMessageObject' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DaDaPushMessageApi#get_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
