# DaDaPushClient::Action

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | action button name | 
**type** | **String** | fix value: link | 
**url** | **String** | action url | 

## Code Sample

```ruby
require 'DaDaPushClient'

instance = DaDaPushClient::Action.new(name: VIEW,
                                 type: link,
                                 url: https://www.dadapush.com/)
```


