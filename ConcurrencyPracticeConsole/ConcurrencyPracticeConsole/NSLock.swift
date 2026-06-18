//
//  NSLock.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

/*

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

class DateFormatters {
	private var lock = NSLock()
	private var formatters: [String: DateFormatter] = [:]
	
	func formatter(using dateFormat: String) -> DateFormatter {
		lock.lock()
		defer { lock.unlock() }
		if let formatter = formatters[dateFormat] {
			return formatter
		}
		let newFormatter = DateFormatter()
		newFormatter.dateFormat = dateFormat
		formatters[dateFormat] = newFormatter
		return newFormatter
	}
}

let cache = DateFormatters()
DispatchQueue.concurrentPerform(iterations: 10) { _ in
	let formatters = ["YYYY", "YYYY-MM", "YYYY-MM-dd"]
	let _ = cache.formatter(using: formatters.randomElement()!)
}

 */
