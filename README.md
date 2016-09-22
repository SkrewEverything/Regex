# Regex
Wrapper class for NSRegularExpression in Swift 3.0 which makes life easier.


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
