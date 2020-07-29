//
//  QuestionViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class QuestionViewController: AudioPlayer {

	@IBOutlet var question: UILabel!
	@IBOutlet var firstAnswer: UIButton!
	@IBOutlet var secondAnswer: UIButton!
	@IBOutlet var thirdAnswer: UIButton!
	@IBOutlet var background: UIImageView!
	var state: String?
	var viewModel = QuestionViewModel()
	var generatedAskings: (Asking, ModifiedAsking)?
    
	override func viewDidLoad() {
        super.viewDidLoad()
		
		viewModel.setStates()
		generatedAskings = viewModel.generateAsking(state: state!) as? (Asking, ModifiedAsking)
		
		question.text = generatedAskings?.0.question

		firstAnswer.setTitle(generatedAskings?.1.firstAnswer, for: .normal)

		secondAnswer.setTitle(generatedAskings?.1.secondAnswer, for: .normal)
		
		thirdAnswer.setTitle(generatedAskings?.1.thirdAnswer, for: .normal)
		
		background.image = UIImage(named: viewModel.setBackground(state: state ?? "nil"))
    }
	
	override var musicName: String { viewModel.setMusic(state: state ?? "nil")}
	
     
	@IBAction func firstButtonAction(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let specificVC = storyboard.instantiateViewController(withIdentifier: "AnswerViewController") as? AnswerViewController
		if generatedAskings?.0.rightAnswer == generatedAskings?.1.firstAnswer {
			specificVC?.type = "right"
			specificVC?.state = state
			for (i, elemente) in viewModel.flagImages.enumerated() {
				if elemente == state {
					StateManager.incrementAnswer(state: i, key: StateManager.key)
					break
				}
			}
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}else {
			specificVC?.type = "wrong"
			specificVC?.state = state
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}
	}
	
	@IBAction func secondButtonAction(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let specificVC = storyboard.instantiateViewController(withIdentifier: "AnswerViewController") as? AnswerViewController
		if generatedAskings?.0.rightAnswer == generatedAskings?.1.secondAnswer {
			
			specificVC?.type = "right"
			specificVC?.state = state
			for (i, elemente) in viewModel.flagImages.enumerated() {
				if elemente == state {
					StateManager.incrementAnswer(state: i, key: StateManager.key)
					break
				}
			}
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}else {
			specificVC?.type = "wrong"
			specificVC?.state = state
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}
	}
	
	@IBAction func thirdButtonAction(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let specificVC = storyboard.instantiateViewController(withIdentifier: "AnswerViewController") as? AnswerViewController
		if generatedAskings?.0.rightAnswer == generatedAskings?.1.thirdAnswer {
			specificVC?.type = "right"
			specificVC?.state = state
			for (i, elemente) in viewModel.flagImages.enumerated() {
				if elemente == state {
					StateManager.incrementAnswer(state: i, key: StateManager.key)
					break
				}
			}
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}else {
			specificVC?.type = "wrong"
			specificVC?.state = state
			self.show(specificVC ?? QuestionViewController(), sender: nil)
		}
	}
}
  
