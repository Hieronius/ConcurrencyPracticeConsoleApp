//
//  nonSendableCase.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 20.06.2026.
//

import Foundation

/*
 
 // MARK: in Swift 6 you should get compiler error because MovieDataView is public and Movie is a class which mean it's not conforms to Sandable by default
 
 class Movie {
	 
	 var isFavourite = false
 }
 
 // MARK: @unchecked Sendability will ask compiler to pretend like the MovieDataView is Sendable but will not ensure thread-safety

 public class MovieDataView: @unchecked Sendability {
	 
	 var movie = Movie()
 }

 func example() {
	 let data = MovieDataView()
	 
	 Task {
		 print(data.movie.isFavourite)
	 }
 }

 example()
 */
