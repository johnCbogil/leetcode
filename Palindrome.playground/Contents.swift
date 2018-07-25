import Foundation

func isPalindrome(_ s: String) -> Bool {
//    var output = s
//    if output.isEmpty {
//        return true
//    }
//    output = output.lowercased()
//    output = output.replacingOccurrences(of: " ", with: "")
//    let unsafeChars = CharacterSet.alphanumerics.inverted  // Remove the .inverted to get the opposite result.
//    output  = output.components(separatedBy: unsafeChars).joined(separator: "")
//
//    if output == String(output.reversed()) {
//        return true
//    }
//
//    return false
    
    if s.isEmpty {
        return true
    }
    print(s)
    print(String(s.reversed()))
    
    if s == String(s.reversed()) {
        return true
    }
    return false
  }

print(isPalindrome("A man, a plan, a canal: Panama"))
