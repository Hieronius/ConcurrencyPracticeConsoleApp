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
