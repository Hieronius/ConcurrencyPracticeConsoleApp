//
//  NSLock.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

class SimpleCache3<Key: Hashable, T> {
	
	private var cache: [Key: T] = [:]
	private let lock = NSLock()
	func getValue(forKey key: Key) -> T? {
		lock.lock()
		let value = cache[key]
		lock.unlock()
		return value
	}
	func setValue(_ value: T, forKey key: Key) {
		
		lock.lock()
		cache[key] = value
		lock.unlock()
	}
}
