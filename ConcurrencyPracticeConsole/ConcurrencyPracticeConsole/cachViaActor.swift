//
//  cachViaActor.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 19.06.2026.
//

import Foundation

/*
 
 MARK: We use actor to guarantee a single thread only access to array of images plus we prevent actor reentrancy by adding ".loading/complete" property to the task we run to avoid multiple network calls for the same image
 
 actor ImageLoader {
	 private var imageData: [UUID: LoadingState] = [:]
	 func loadImageData(using id: UUID) async throws -> Data {
		 if let state = imageData[id] {
			 switch state {
			 case.loading(let task):
				 return try await task.value
			 case.completed(let data):
				 return data
			 }
		 }
		 let task = Task<Data, Error> {
			 // buildURL constructs a URL object based on a UUID
			 let url = buildURL(using: id)
			 let (data, _) = try await URLSession.shared.data(from: url)
			 return data
		 }
		 imageData[id] = .loading(task)
		 do {
			 let data = try await task.value
			 imageData[id] = .completed(data)
			 return data
		 } catch {
			 imageData[id] = nil
			 throw error
		 }
	 }
	 // To implement..
 }
 }

 extension ImageLoader {
	 enum LoadingState {
		 case loading(Task<Data, Error>)
		 case completed(Data)
	 }
 }
 
 */
