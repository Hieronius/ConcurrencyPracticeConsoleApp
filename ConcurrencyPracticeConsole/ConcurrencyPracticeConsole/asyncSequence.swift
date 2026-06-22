//
//  asyncSequence.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 20.06.2026.
//

import Foundation

// MARK: asynchronous sequences

// Data Model

//struct Car {
//	let year: String
//	let make: String
//	let model: String
//	let body_styles: String
//}

/*
 
 Initial data style from spreadsheet
 year,make,model,body_styles
 2023,Acura,ILX,"[""Sedan""]"
 2023,Acura,Integra,"[""Hatchback""]"
 2023,Acura,MDX,"[""SUV""]"
 2023,Acura,RDX,"[""SUV""]"
 2023,Acura,TLX,"[""Sedan""]"
 2023,Alfa Romeo,Giulia,"[""Sedan""]"
 2023,Alfa Romeo,Stelvio,"[""SUV""]"
 */

// Extraction of the data from URL



//let csvData = try Data(contentsOf: url)
//let csvString = String(data: csvData, encoding: .utf8)
//let csvLines = csvString?.components(separatedBy: "\n") ?? []
//
//var cars = [Car]()
//// We can await values to become available
//for try await line in csvURL.lines {
//	let components = line.components(separatedBy: ",")
//	guard components.count == 4 else {
//		continue
//	}
//	let car = Car(year: components[0],
//				  make: components[1],
//				  model: components[2],
//				  body_styles: components[3])
//	cars.append(car)
//}
//print(cars)


// MARK: The way to run two async loops synchronous
/*
 1. Assign each for loop for it's own task
 2. Put both tasks into separate Task
 3. call await for the sub tasks inside main Task via task.value
 */


//Task {
//	let csvURL = URL(string: "http://127.0.0.1:8080/cars.csv")!
//	let task1 = Task {
//		for try await _ in csvURL.lines {
//			print("Loop one received line...")
//		}
//	}
//	let task2 = Task {
//		for try await _ in csvURL.lines {
//			print("Loop two received line...")
//		}
//	}
//	try await (task1.value, task2.value)
//	print("both sequences are processed")
//}
//
//let task1 = Task {
//	print("it's task 1")
//}
//
//// MARK: The way to put each async loop for it's dedicated async function
//
//func loadOne() async throws {
//for try await line in csvURLPartOne.lines {
//// ...
//}
//}
//func loadTwo() async throws {
//for try await line in csvURLPartTwo.lines {
//// ...
//}
//}
//
//do {
//	try await loadOne()
//} catch {
//	print("HEllo")
//}
//await loadTwo()

// MARK: Putting async sequence to dedicated async function

//func asyncLoop1() async throws {
//	
//	for try await number in ["asdsa", "asdasd", "asdasd"] {
//		
//		print(number)
//	}
//	print("Loop one has been completed")
//}
//
//func asyncLoop1() async throws {
//	
//	for try await number in [1, 2, 3, 4] {
//		
//		print(number)
//	}
//	print("Loop one has been completed")
//}
//
//await asyncLoop1()
//await asyncLoop2()
