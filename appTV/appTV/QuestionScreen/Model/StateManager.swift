//
//  StateManager.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 13/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation

struct StateManager {
	
	static let key = "stateArray"
	static let randomKey = "randomArray"
	
	static func getStateRightAnswers(state: Int, key: String) -> Int {
		guard let states = UserDefaults.standard.object(forKey: key) as? [Int] else {return -1}
		return states[state]
	}
	
	static func incrementAnswer(state: Int, key: String) {
		guard var states = UserDefaults.standard.object(forKey: key) as? [Int] else {return }
		states[state] += 1
		UserDefaults.standard.set(states, forKey: key)
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
		
		guard var _ = UserDefaults.standard.object(forKey: StateManager.randomKey) as? [Int] else {
			var randomArray: [Int] = []
			for _ in 0...27 {
				randomArray.append(0)
			}
			UserDefaults.standard.set(randomArray, forKey: StateManager.randomKey)
			return
		}
	}
}
