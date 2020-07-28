//
//  AnswerViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 10/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class AnswerViewController: UIViewController {

	@IBOutlet var background: UIImageView!
	@IBOutlet var label: UILabel!
	@IBOutlet var person: UIImageView!
    @IBOutlet weak var backgroundStates: UIImageView!
    var player: AVAudioPlayer?
	var type: String?
	var state: String?
	var viewModel = AnswerViewModel()
    var questionViewModel = QuestionViewModel()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		switch type {
			case "right":
				background.image = UIImage(named: "blocorespostacerta")
                backgroundStates.image = UIImage(named: questionViewModel.setBackground(state: state ?? "nil"))
                backgroundStates.alpha = 0.5
				label.text = "Você acertou a resposta..."
				person.image = UIImage(named: "presidentebravoatualcomfaixa")
				playSound(music: "Efeito-ACERTO")
				player?.play()
			default:
				background.image = UIImage(named: "blocorespostaerrada")
                backgroundStates.image = UIImage(named: questionViewModel.setBackground(state: state ?? "nil"))
                backgroundStates.alpha = 0.5
				label.text = "Você errou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
				playSound(music: "Efeito-ERRO")
				player?.play()
		}
    }
	
	@IBAction func nextAsking(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		var count: Int = 0
		let index = viewModel.foundState(state: state ?? "nil")
		StateManager.incrementAnswer(state: index, key: StateManager.randomKey)
		for i in 0..<27 {
			if StateManager.getStateRightAnswers(state: i, key: StateManager.key) > 2 {
				count+=1
			}
		}
		if count == 27 {
			let specificVC = storyboard.instantiateViewController(withIdentifier: "VictoryViewController") as? VictoryViewController
			self.show(specificVC ?? VictoryViewController(), sender: nil)
		} else {
			if StateManager.getStateRightAnswers(state: index, key: StateManager.key) > 2 {
				let specificVC = storyboard.instantiateViewController(withIdentifier: "WonStateViewController") as? WonStateViewController
				specificVC?.state = state
				self.show(specificVC ?? WonStateViewController(), sender: nil)
			} else {
				let specificVC = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
				specificVC?.state = state
				self.show(specificVC ?? QuestionViewController(), sender: nil)
			}
		}
	}
	
    override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
	
	func playSound(music: String) {
        if let soundURL = Bundle.main.path(forResource: music, ofType: "mp3") {
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
                try AVAudioSession.sharedInstance().setActive(true)
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("Não foi possível encontrar o arquivo ou a configuração está desabilitada")
        }
    }
}
