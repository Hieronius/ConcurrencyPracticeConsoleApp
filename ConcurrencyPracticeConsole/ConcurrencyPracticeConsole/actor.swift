//
//  actor.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 17.06.2026.
//

import Foundation

/*
 
 MARK: Actor will process all the tasks put on it one by one but not guarantees finishing the one before starting a new one
 actor DateFormatters {
	 
	 private var formatters: [String: DateFormatter] = [:]
	 
	 func formatter(using dateFormat: String) -> DateFormatter {
		 if let formatter = formatters[dateFormat] {
			 return formatter
		 }
		 let newFormatter = DateFormatter()
		 newFormatter.dateFormat = dateFormat
		 formatters[dateFormat] = newFormatter
		 return newFormatter
	 }
 }
 */
