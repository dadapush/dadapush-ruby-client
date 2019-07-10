# DaDaPushClient::MessagePushRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**Array&lt;Action&gt;**](Action.md) | action size range is 0,3 | [optional] 
**content** | **String** | message content | 
**need_push** | **Boolean** | when value is false, will not send client push | 
**title** | **String** | message title | 

## Code Sample

```ruby
require 'DaDaPushClient'

instance = DaDaPushClient::MessagePushRequest.new(actions: null,
                                 content: Good News! DaDaPush releasing new version,
                                 need_push: true,
                                 title: Good News!)
```


