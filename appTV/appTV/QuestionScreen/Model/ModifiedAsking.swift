//
//  ModifiedAsking.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 10/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation
import UIKit

class ModifiedAsking {
	
	var question: String = ""
	var firstAnswer: String = ""
	var secondAnswer: String = ""
	var thirdAnswer: String = ""
	
	init(question: String, firstAnswer: String, secondAnswer: String, thirdAnswer: String) {
		self.question = question
		self.firstAnswer = firstAnswer
		self.secondAnswer = secondAnswer
		self.thirdAnswer = thirdAnswer
	}
}
