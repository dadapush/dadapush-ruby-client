# DaDaPushClient::MessageObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**Array&lt;Action&gt;**](Action.md) | action size range is 0,3 | [optional] 
**channel_name** | **String** |  | 
**content** | **String** |  | 
**created_at** | **String** |  | 
**id** | **Integer** |  | 
**title** | **String** |  | 

## Code Sample

```ruby
require 'DaDaPushClient'

instance = DaDaPushClient::MessageObject.new(actions: null,
                                 channel_name: channelName,
                                 content: DaDaPush v1.0.0 releasing,
                                 created_at: 2015-07-25T23:09:01.795+0700,
                                 id: 123,
                                 title: Good News!)
```


