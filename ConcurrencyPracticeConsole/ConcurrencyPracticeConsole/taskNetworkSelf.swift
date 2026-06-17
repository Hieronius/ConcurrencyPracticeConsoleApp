//
//  taskNetworkSelf.swift
//  ConcurrencyPracticeConsole
//
//  Created by Арсентий Халимовский on 16.06.2026.
//

import Foundation

/*
 
 MARK: Network call via Task with [weak self] handling
 
 class TaskLifecycle {
	 let networking = Networking()
	 var items = [Response]()
	 func loadAllPages() {
		 // we've added a weak self here
		 Task { [weak self] in
			 var hasMorePages = true
			 var currentPage = 0
			 while hasMorePages {
				 guard let self= self else {
					 return
				 }
				 let page = await self.networking.fetchPage(currentPage)
				 if page.hasMorePages {
					 currentPage += 1
					 self.items.append(page)
				 } else {
					 hasMorePages = false
				 }
			 }
		 }
	 }
 }
 */
