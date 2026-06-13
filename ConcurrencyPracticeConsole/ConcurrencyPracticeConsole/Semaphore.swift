//
//  Semaphore.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

class SimpleCache2<Key: Hashable, T> {
	
	private var cache: [Key: T] = [:]
	private let semaphore = DispatchSemaphore(value: 1)
	func getValue(forKey key: Key) -> T? {
		semaphore.wait()
		let value = cache[key]
		semaphore.signal()
		return value
	}
	func setValue(_ value: T, forKey key: Key) {
		
		semaphore.wait()
		cache[key] = value
		semaphore.signal()
	}
}
