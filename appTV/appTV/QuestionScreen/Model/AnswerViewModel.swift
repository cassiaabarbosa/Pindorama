//
//  AnswerViewModel.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 14/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation

class AnswerViewModel {
	
	var flagImages: [String] = ["AC", "AP", "AM", "PA", "RO", "RR", "TO", "AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE", "PR", "RS", "SC", "ES", "MG", "RJ","SP", "DF", "GO", "MT", "MS"]
	
	func foundState(state: String) -> Int {
		for (index, flag) in flagImages.enumerated() {
			if flag == state {
				return index
			}
		}
		return -1
	}
}
