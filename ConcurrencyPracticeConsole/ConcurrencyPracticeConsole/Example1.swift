//
//  Example1.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 11.06.2026.
//

import Foundation

func getFullName() {
let givenName = getGivenName()
let familyName = getFamilyName()
print("\(givenName) \(familyName)")
}

func getGivenName() -> String {
print("What's your given name?")
return readLine() ?? "--"
}
func getFamilyName() -> String {
print("What's your family name?")
return readLine() ?? "--"
}
// getFullName()
