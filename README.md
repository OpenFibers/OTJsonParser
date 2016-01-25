#OTJsonParser

JSON parser in objective-c.  

Usage:  

```
//as same as JSONKit
NSDictionary *dictionary = @{@"key": @"value", @"key2": @"value2"};
NSString *jsonString = [dictionary JSONString];
NSDictionary *jsonObject = [jsonString objectFromJSONString];
```