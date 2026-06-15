//
//  AsyncBattleManager.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 14.06.2026.
//

import Foundation

//class BattleManager {
//	
//	var actionInProgress = false
//	
//	func executeActions() async {
//
		// execute actions from queue with for in loop
//		await fastAttack()
//		await slowAttack()
//		await fastAttack()
//	}
//	
//	func fastAttack() async {
//		
//		guard !actionInProgress else { return }
//		
//		actionInProgress = true
//		print("attack started. actionInProgress: \(actionInProgress)")
//		
//		do {
//			print("attack execution begins")
//			try await Task.sleep(nanoseconds: 1_000_000_000)
//			print("attack execution ends")
//		} catch {
//			print("attack has been canceled")
//		}
//		actionInProgress = false
//		print("attack ended. actionInProgress: \(actionInProgress)")
//		
//	}
//	
//	func slowAttack() async {
//		
//		guard !actionInProgress else { return }
//		
//		actionInProgress = true
//		print("attack started. actionInProgress: \(actionInProgress)")
//		
//		do {
//			print("attack execution begins")
//			try await Task.sleep(nanoseconds: 3_000_000_000)
//			print("attack execution ends")
//		} catch {
//			print("attack has been canceled")
//		}
//		actionInProgress = false
//		print("attack ended. actionInProgress: \(actionInProgress)")
//	}
//}
//
//let battleManager = BattleManager()
//await battleManager.executeActions()
