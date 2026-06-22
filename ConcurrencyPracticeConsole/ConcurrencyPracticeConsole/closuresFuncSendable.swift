//
//  closuresFuncSendable.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 20.06.2026.
//

import Foundation

// functions

@Sendable func sampleFanc() { }

// MARK: Wrong capturing of the non-Sendable object (Movie)

class Movie {
	// ...
	var isFavorite = false
}
let movie = Movie()
var sample: @Sendable () -> Void = {
	// Capture of'movie' with non-sendable type'Movie' in a
//	→
//	`@Sendable` closure
	movie.isFavorite = false
}

// MARK: Correct version

let isFavorite = movie.isFavorite
var sample1: @Sendable () -> Void = { [isFavorite] in
	print(isFavorite)
}
