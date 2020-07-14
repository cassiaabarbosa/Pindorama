//
//  QuestionViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class QuestionViewController: UIViewController {

	@IBOutlet var question: UILabel!
	@IBOutlet var firstAnswer: UIButton!
	@IBOutlet var secondAnswer: UIButton!
	@IBOutlet var thirdAnswer: UIButton!
	@IBOutlet var background: UIImageView!
	var state: String?
	var viewModel = QuestionViewModel()
	var generatedAskings: (Asking, ModifiedAsking)?
    var player: AVAudioPlayer?
    
	override func viewDidLoad() {
		playSound()
        player?.play()
        super.viewDidLoad()
		
		viewModel.setStates()
		generatedAskings = viewModel.generateAsking(state: state!) as? (Asking, ModifiedAsking)
		
		question.text = generatedAskings?.0.question

		firstAnswer.setTitle(generatedAskings?.1.firstAnswer, for: .normal)

		secondAnswer.setTitle(generatedAskings?.1.secondAnswer, for: .normal)
		
		thirdAnswer.setTitle(generatedAskings?.1.thirdAnswer, for: .normal)
		
		background.image = UIImage(named: viewModel.setBackground(state: state ?? "nil"))
    }
	
    override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
	   
	@IBAction func firstButtonAction(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let specificVC = storyboard.instantiateViewController(withIdentifier: "AnswerViewController") as? AnswerViewController
		if generatedAskings?.0.rightAnswer == generatedAskings?.1.firstAnswer {
			specificVC?.type = "right"
			specificVC?.state = state
			for (i, elemente) in viewModel.flagImages.enumerated() {
				if elemente == state {
					StateManager.incrementAnswer(state: i)
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
					StateManager.incrementAnswer(state: i)
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
					StateManager.incrementAnswer(state: i)
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
	
    func playSound() {
		if let soundURL = Bundle.main.path(forResource: viewModel.setMusic(state: state ?? "nil"), ofType: "mp3") {
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
                try AVAudioSession.sharedInstance().setActive(true)
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
                player?.numberOfLoops = -1
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("Não foi possível encontrar o arquivo ou a configuração está desabilitada")
        }
    }
}
