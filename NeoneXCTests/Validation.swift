//
//  Validation.swift
//  NeoneXCTests
//
//  Created by Markus Wirtz on 04.11.24.

import Foundation

func validateEmail(_ email: String) -> Bool {
    
    let emailPattern = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
    let emailRegex = try! NSRegularExpression(pattern: emailPattern)
    let range = NSRange(location: 0, length: email.utf16.count)
    return emailRegex.firstMatch(in: email, options: [], range: range) != nil
}

