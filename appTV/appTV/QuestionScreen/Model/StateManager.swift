//
//  StateManager.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 13/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation

struct StateManager {
	private static let key = "stateArray"
	static func getStateRightAnswers(state: Int) -> Int {
		guard let states = UserDefaults.standard.object(forKey: StateManager.key) as? [Int] else {return -1}
		return states[state]
	}
	
	static func incrementAnswer(state: Int) {
		guard var states = UserDefaults.standard.object(forKey: StateManager.key) as? [Int] else {return }
		states[state] += 1
		UserDefaults.standard.set(states, forKey: StateManager.key)
	}
	
	static func startManager() {
		guard var _ = UserDefaults.standard.object(forKey: StateManager.key) as? [Int] else {
			var newStates: [Int] = []
			for _ in 0...27 {
				newStates.append(0)
			}
			UserDefaults.standard.set(newStates, forKey: StateManager.key)
			return
		}
	}
}

