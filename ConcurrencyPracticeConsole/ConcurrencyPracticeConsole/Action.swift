//
//  Action.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 22.06.2026.
//

import Foundation

// MARK: Action struct

/// A simple model to represent an actual action
struct Action {
	
	var name: String
	var actionType: ActionType
	var timeToCast: Double
	
	init(name: String,
		 actionType: ActionType,
		 timeToCast: Double
	) {
		self.name = name
		self.actionType = actionType
		self.timeToCast = timeToCast
	}
}

// MARK: ActionType enum

/// Any type of character actions in the battle
enum ActionType: String {
	
	case fastAttack
	case slowAttack
	case heal
	case block
	case ultimate
}

// MARK: ActionQueue struct

/// We need a queue to fill with actions
class ActionQueue {
	
	var queue: [Action] = []
	
	var isEmpty: Bool {
		queue.isEmpty
	}
	
	var actionInProgress = false
	
	var count: Int {
		queue.count
	}
	
	/// Method runs until queue will be empty
	/// You do not need guard in execute/extract action because if it's empty it won't move further
	func executeActions() async {
		
		print("Start Running the queue")
		
		while queue.isEmpty != true {
			
			print("Found an action")
			
			if actionInProgress != true {
				
				let action = extractAction()
				print("Passed action for execution")
				await executeSingleAction(action)
			}
		}
	}
	
	func addAction(action: Action) {
		queue.append(action)
	}
	
	func extractAction() -> Action {
		queue.removeFirst()
	}
	
	func executeSingleAction(_ action: Action) async {
		
		guard !actionInProgress else { return }
		print("Execution started. actionInProgress - \(actionInProgress)")
		actionInProgress = true
		
		do {
			try await Task.sleep(nanoseconds: 1_000_000_000)
			print("In the middle")
		} catch {
			print("Has been canceled")
		}
		actionInProgress = false
		print("Execution ends. actionInProgress - \(actionInProgress)")
	}
}
