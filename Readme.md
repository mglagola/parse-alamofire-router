# Parse [Alamofire Router](https://github.com/Alamofire/Alamofire#crud--authorization)
This code was generated using an internal module (open sourcing soon). The generated code was slightly tweaked for persisting parse sessions.

Browse the [full code here](https://github.com/mglagola/parse-alamofire-router/blob/master/ParseRouter/ParseRouter.swift)

## Example Usage

```swift
ParseRouter.RestAPIKey = "parse-rest-api-key"
ParseRouter.AppId = "parse-application-id"

let userObjectId = "someObjectId"
Alamofire.request(ParseRouter.GetUser(userObjectId))
  .responseJSON { response in
    if let JSON = response.result.value {
      print("JSON: \(JSON)")
    }
  }
```
