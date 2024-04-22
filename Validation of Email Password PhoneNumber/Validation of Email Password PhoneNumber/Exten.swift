//
//  Exten.swift
//  Validation of Email Password PhoneNumber
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

extension String {
    //MARK: For Valid Email
    var isValidEmail: Bool {
        let regularExpressionForEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let testEmail = NSPredicate(format:"SELF MATCHES %@", regularExpressionForEmail)
        return testEmail.evaluate(with: self)
    }
    //MARK: For Valid Password
    var isValidPassword : Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: self)
    }
    //MARK: For Valid Phone Nubmber
    var isValidPhone: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let metch = detector.matches(in: self, options: [] ,range: NSMakeRange(0, self.count))
            if let result = metch.first {
                return result.resultType == .phoneNumber && result.range.location == 0 && result.range.length == self.count && self.count == 10
            }else{
                return false
            }
        } catch {
            return false
        }
    }
}
