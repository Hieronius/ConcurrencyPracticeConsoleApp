//
//  Continuation.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 16.06.2026.
//

import Foundation

/*
 
 MARK: If you have a legacy code/method you can create a new async version of it and wrap the old one inside Swift Concurrency Continuation block. Think about it just like about a wrapper
 
 
 
 // This is now a clean async/await function
 func fetchUserProfile(userId: String) async throws -> Profile {
	 return try await withCheckedThrowingContinuation { continuation in
		 
		 // 1. Call your legacy code inside the block
		 fetchUserProfileLegacy(userId: userId) { result in
			 switch result {
			 case .success(let profile):
				 // 2. Resume with success to return the value
				 continuation.resume(returning: profile)
			 case .failure(let error):
				 // 3. Resume with throwing to propagate the error
				 continuation.resume(throwing: error)
			 }
		 }
		 
	 }
 }
 
 
 
 */
