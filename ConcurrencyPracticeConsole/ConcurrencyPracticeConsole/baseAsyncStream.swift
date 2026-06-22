//
//  baseAsyncStream.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 21.06.2026.
//

import Foundation

func makeStream(values: Int) -> AsyncStream<String> {
	var valueCount = 0
	return AsyncStream(unfolding: {
		let value = await produceValue(shouldTerminate: valueCount ==
									   values)
		valueCount += 1
		return value
	})
}
func produceValue(shouldTerminate: Bool) async -> String? {
	guard !shouldTerminate else {
		return nil
	}
	return UUID().uuidString
}

let result = makeStream(values: 100)

//for try await value in result {
//	print(value)
//}

// MARK: How to cancel stream

//let stream = AsyncStream(unfolding: { [weak self] in
//let nextValue = await self?.produceNextValue()
//return nextValue
//}, onCancel: {
//// called upon cancellation
//// a nice spot to do cleanup
//})

// MARK: Second Way to create AsyncStream

//let stream = AsyncStream { continuation in
//print("will start yielding")
//continuation.yield(1)
//continuation.yield(2)
//continuation.yield(3)
//continuation.finish()
//print("finished the stream")
//}
//for await value in stream {
//print("received \(value)")
//}

// first the stream will be finished and after all values will be received

// This way allows us to get only the latest value

let stream = AsyncStream(bufferingPolicy: .bufferingOldest(3)) {
	continuation in
	print("will start yielding")
	continuation.yield(1)
	continuation.yield(2)
	continuation.yield(3)
	continuation.yield(4)
	continuation.yield(5)
	continuation.finish()
	print("finished the stream")
}

//for await value in stream {
//print("received \(value)")
//}
