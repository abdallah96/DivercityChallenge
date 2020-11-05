//
//  Validity.swift
//  Divercity
//
//  Created by Abdallah Gueye on 04/11/2020.
//

import Foundation

extension String{
    
    enum Validity{
        
        case password
    }
    
    enum Regex: String{
        
        case password = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"
    }
    
    func isValid(in text: String) {
        let re = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"
        do {
                let regex = try NSRegularExpression(pattern: re)
                let results = regex.matches(in: text,
                                            range: NSRange(text.startIndex..., in: text))
            if results.count = 0 {
                <#code#>
            }
//                return results.map {
//                    String(text[Range($0.range, in: text)!])
//                }
            } catch let error {
                print("invalid regex: \(error.localizedDescription)")
//                return []
            }
    }
}
