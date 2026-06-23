//
//  asyncLocationManager.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 22.06.2026.
//

import Foundation

//actor LocationProvider: NSObject {
//	fileprivate let locationManager = CLLocationManager()
//	fileprivate var continuation: AsyncStream<CLLocation>.Continuation?
//	private var stream: AsyncStream<CLLocation>?
//	// init and request permisisons are unchanged...
//	func startUpdatingLocation() -> AsyncStream<CLLocation> {
//		if let stream {
//			return stream
//		}
//		requestPermissionIfNeeded()
//		locationManager.startUpdatingLocation()
//		stream = AsyncStream(bufferingPolicy: .bufferingNewest(1)) {
//			continuation in
//			self.continuation = continuation
//		}
//		return stream!
//	}
//	
//	func requestPermissionIfNeeded() {
//	if locationManager.authorizationStatus == .notDetermined {
//	locationManager.requestWhenInUseAuthorization()
//	}
//	}
//}
//	
//extension LocationProvider: CLLocationManagerDelegate {
//	nonisolated func locationManager(_ manager: CLLocationManager,
//						 didUpdateLocations locations: [CLLocation]) {
//		// We use Task there instead of method async because otherwise this loop will block any other loops until it finish
//		Task {
//			for location in locations {
//				await continuation?.yield(location)
//			}
//		}
//	}
//}
//
//let provider = LocationProvider()
//let seq1 = await provider.startUpdatingLocation()
//let seq2 = await provider.startUpdatingLocation()
//Task {
//	print("task 1 has been started")
//	for await location in seq1 {
//		print("seq1", location)
//	}
//	print("task 1 has been ended")
//}
//Task {
//	print("task 1 has been started")
//	for await location in seq2 {
//		print("seq2", location)
//	}
//	print("task 2 has been ended")
//}
