//
//  DispatchSync.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

class SimpleCache<Key: Hashable, T> {
	private var cache: [Key: T] = [:]
	private let queue = DispatchQueue(
		label: "SimpleCache.\(UUID().uuidString)"
	)
	func getValue(forKey key: Key) -> T? {
		return queue.sync {
			return cache[key]
		}
	}
	func setValue(_ value: T, forKey key: Key) {
		queue.sync {
			cache[key] = value
		}
	}
}
