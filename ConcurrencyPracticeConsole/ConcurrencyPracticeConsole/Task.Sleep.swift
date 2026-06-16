//
//  Task.Sleep.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 16.06.2026.
//

import Foundation

/*
 
 class TaskRunner {
	 static func run(tasks: Int) {
		 for i in 0..<tasks {
			 spawnTaskAndSleep(for: 3)
			 print("Spawned task for \(i)")
		 }
	 }
	 static func spawnTaskAndSleep(for seconds: Int) {
		 Task {
			 let taskId = UUID()
			 print("Task \(taskId) started at \(Date())")
			 try await Task.sleep(for: .seconds(seconds))
			 print("Task \(taskId) ended at \(Date())")
		 }
	 }
 }

 TaskRunner.run(tasks: 100)
 */
