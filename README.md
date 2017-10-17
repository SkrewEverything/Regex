# Regex
Wrapper class for `NSRegularExpression` in Swift.

[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg)]()

### Usage
``Regex(regex:string:)``  First argument takes regular expression and second argument takes a string to be checked.

``getMatchedResults()`` returns an optional ``String`` array of matched strings.

``getCapturedGroups()`` returns an optional ``String`` array of captured groups.

#### Example
```Swift
let a        = Regex(regex: "(\\D+)\\s(\\D+)", string: "Mom's Spaghetti")
let matched  = a.getMatchedResults() // matched strings
let captured = a.getCapturedGroups() // grouped strings

// Iterating over matched strings
if let result = matched 
{
    for r in result
    {
        print(r)
    }
}

// Iterating over captured groups
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
