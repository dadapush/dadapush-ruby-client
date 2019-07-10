# DaDaPushClient::DaDaPushMessageApi

All URIs are relative to *https://www.dadapush.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_message**](DaDaPushMessageApi.md#create_message) | **POST** /api/v1/message | push Message to a Channel
[**delete_message**](DaDaPushMessageApi.md#delete_message) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
[**get_message**](DaDaPushMessageApi.md#get_message) | **GET** /api/v1/message/{messageId} | get a Channel Message
[**get_messages**](DaDaPushMessageApi.md#get_messages) | **GET** /api/v1/messages | get Message List



## create_message

> ResultOfMessagePushResponse create_message(body, opts)

push Message to a Channel

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example

```ruby
# load the gem
require 'dadapush_client'

api_instance = DaDaPushClient::DaDaPushMessageApi.new
body = DaDaPushClient::MessagePushRequest.new # MessagePushRequest | body
opts = {
  x_channel_token: 'x_channel_token_example' # String | see: https://www.dadapush.com/channel/list
}

begin
  #push Message to a Channel
  result = api_instance.create_message(body, opts)
  p result
rescue DaDaPushClient::ApiError => e
  puts "Exception when calling DaDaPushMessageApi->create_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MessagePushRequest**](MessagePushRequest.md)| body | 
 **x_channel_token** | **String**| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfMessagePushResponse**](ResultOfMessagePushResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_message

> Result delete_message(message_id, opts)

delete a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example

```ruby
# load the gem
require 'dadapush_client'

api_instance = DaDaPushClient::DaDaPushMessageApi.new
message_id = 56 # Integer | messageId
opts = {
  x_channel_token: 'x_channel_token_example' # String | see: https://www.dadapush.com/channel/list
}

begin
  #delete a Channel Message
  result = api_instance.delete_message(message_id, opts)
  p result
rescue DaDaPushClient::ApiError => e
  puts "Exception when calling DaDaPushMessageApi->delete_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **Integer**| messageId | 
 **x_channel_token** | **String**| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message

> ResultOfMessageObject get_message(message_id, opts)

get a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example

```ruby
# load the gem
require 'dadapush_client'

api_instance = DaDaPushClient::DaDaPushMessageApi.new
message_id = 56 # Integer | messageId
opts = {
  x_channel_token: 'x_channel_token_example' # String | see: https://www.dadapush.com/channel/list
}

begin
  #get a Channel Message
  result = api_instance.get_message(message_id, opts)
  p result
rescue DaDaPushClient::ApiError => e
  puts "Exception when calling DaDaPushMessageApi->get_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **Integer**| messageId | 
 **x_channel_token** | **String**| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfMessageObject**](ResultOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messages

> ResultOfPageResponseOfMessageObject get_messages(page, page_size, opts)

get Message List

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example

```ruby
# load the gem
require 'dadapush_client'

api_instance = DaDaPushClient::DaDaPushMessageApi.new
page = 1 # Integer | greater than 1
page_size = 10 # Integer | range is 1,50
opts = {
  x_channel_token: 'x_channel_token_example' # String | see: https://www.dadapush.com/channel/list
}

begin
  #get Message List
  result = api_instance.get_messages(page, page_size, opts)
  p result
rescue DaDaPushClient::ApiError => e
  puts "Exception when calling DaDaPushMessageApi->get_messages: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| greater than 1 | [default to 1]
 **page_size** | **Integer**| range is 1,50 | [default to 10]
 **x_channel_token** | **String**| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfPageResponseOfMessageObject**](ResultOfPageResponseOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

