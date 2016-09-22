import Foundation


class Regex
{
    let regex: String
    let string: String
    var captured = [String](),matches = [String]()
    
    init(regex: String , string: String)
    {
        self.regex = regex
        self.string = string
        
        do
        {
            let regex = try NSRegularExpression(pattern: self.regex, options: [])
            let nsString = self.string as NSString
            let result = regex.matches(in: self.string, options: [], range: NSRange(location: 0, length: self.string.characters.count))
            
            if(result.count > 0)
            {
                for i in 0..<result.count
                {
                    for r in 1..<result[i].numberOfRanges
                    {
                        self.captured.append((nsString.substring(with: result[i].rangeAt(r))))
                    }
                }
            }
            
            for r in result
            {
                matches.append(nsString.substring(with: r.range))
            }
        }
        catch let error as NSError
        {
            print("Invalid Regex: \(error.localizedDescription)")
        }
    }
    
    func getMatchResult() -> [String]?
    {
        if matches.count > 0
        {
            return matches
        }
        else
        {
            return nil
        }
    }
    
    func getCapturedGroups() -> [String]?
    {
        if captured.count > 0
        {
            return captured
        }
        else
        {
            return nil
        }
    }
}
