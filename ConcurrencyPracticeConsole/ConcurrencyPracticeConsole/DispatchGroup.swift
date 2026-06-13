//
//  File.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 12.06.2026.
//

import Foundation

func fetchWebsites() {
	let group = DispatchGroup() // 1
	var results = [Data]()
	let urls = [
		"https://practicalcoredata.com",
		"https://practicalcombine.com",
		"https://practicalswiftconcurrency.com"
	].compactMap(URL.init)
	for url in urls {
		group.enter() // 3
		URLSession.shared.dataTask(with: url) { data, response, error in
			if let data = data {
				results.append(data)
			}
			group.leave() // 4
		}.resume()
	}
	// 2
	group.notify(queue: DispatchQueue.main) {
		print(results)
	}
	print("WHERE ARE YOU FUCKING IMBICIL?")
}

//fetchWebsites()
