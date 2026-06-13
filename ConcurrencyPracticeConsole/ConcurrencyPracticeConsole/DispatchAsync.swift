//
//  DispatchAsync.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

func performAsync() {
print("async: before")
DispatchQueue.global().async {
print("async: inside")
}
print("async: after")
}

//performAsync()
