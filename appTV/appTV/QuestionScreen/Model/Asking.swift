//
//  Asking.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 08/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation
import UIKit

class Asking {
	
	var question: String = ""
	var rightAnswer: String = ""
	var secondAnswer: String = ""
	var thirdAnswer: String = ""
	
	init(question: String, rightAnswer: String, secondAnswer: String, thirdAnswer: String) {
		self.question = question
		self.rightAnswer = rightAnswer
		self.secondAnswer = secondAnswer
		self.thirdAnswer = thirdAnswer
	}
}
