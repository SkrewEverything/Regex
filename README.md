# Regex
Wrapper class for NSRegularExpression in Swift.

[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg)]() [![license](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000?style=plastic)]()

### Usage
``Regex(regex:string:)``  First argument takes regular expreesion and second argument takes a string to be checked.

``getMatchedResults()`` returns an optional ``String`` array of matched strings.

``getCapturedGroups()`` returns an optional ``String`` array of catured groups

#### Example
```Swift
let result = Regex(regex: "(\\D+)\\s(\\D+)", string: "Mom's Spaghetti")
let matched = a.getMatchedResults() // matched strings
let captured = a.getCapturedGroups() // grouped strings

if let result = matched
{
    for r in result
    {
        print(r)
    }
}

if let result = captured
{
    for r in result
    {
        print(r)
    }
}
````



License
----

MIT


**Free Software, Hell Yeah!**
