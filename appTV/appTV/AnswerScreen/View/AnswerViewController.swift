//
//  AnswerViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 10/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

//background.image = UIImage(named: viewModel.setBackground(state: state ?? "nil"))
class AnswerViewController: UIViewController {

	@IBOutlet var background: UIImageView!
	@IBOutlet var label: UILabel!
	@IBOutlet var person: UIImageView!
    @IBOutlet weak var backgroundStateRegion: UIImageView!
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
				label.text = "Você acertou a resposta..."
				person.image = UIImage(named: "presidentebravoatualcomfaixa")
                backgroundStateRegion.image = UIImage(named: questionViewModel.setBackground(state: state ?? "nil"))
				playSound(music: "Efeito-ACERTO")
				player?.play()
				var count:Int = 0
				for i in 0..<27 {
					if StateManager.getStateRightAnswers(state: i) > 2 {
						count+=1
					}
				}
				if count == 27 {
					let storyboard = UIStoryboard(name: "Main", bundle: nil)
					let specificVC = storyboard.instantiateViewController(withIdentifier: "VictoryViewController") as? VictoryViewController
					self.show(specificVC ?? VictoryViewController(), sender: nil)
			}
			
			default:
				background.image = UIImage(named: "blocorespostaerrada")
                backgroundStateRegion.image = UIImage(named: questionViewModel.setBackground(state: state ?? "nil"))
				label.text = "Você errou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
				playSound(music: "Efeito-ERRO")
				player?.play()
		}
    }
	
	@IBAction func nextAsking(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let index = viewModel.foundState(state: state ?? "nil")
		if StateManager.getStateRightAnswers(state: index) > 2 {
			let specificVC = storyboard.instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
			self.show(specificVC ?? SelectionViewController(), sender: nil)
		} else {
			let specificVC = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
			specificVC?.state = state
			self.show(specificVC ?? QuestionViewController(), sender: nil)
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
