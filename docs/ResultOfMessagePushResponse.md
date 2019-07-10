# DaDaPushClient::ResultOfMessagePushResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** |  | 
**data** | [**MessagePushResponse**](MessagePushResponse.md) |  | [optional] 
**errmsg** | **String** |  | 

## Code Sample

```ruby
require 'DaDaPushClient'

instance = DaDaPushClient::ResultOfMessagePushResponse.new(code: 0,
                                 data: null,
                                 errmsg: ok)
```


