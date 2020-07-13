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
    var player: AVAudioPlayer?

	var type: String?
	
	override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        player?.play()
		switch type {
			case "right":
				background.image = UIImage(named: "blocorespostacerta")
				label.text = "Você acertou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
			default:
				background.image = UIImage(named: "blocorespostaerrada")
				label.text = "Você errou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
		}
    }
	
	@IBAction func nextAsking(_ sender: Any) {
//		tem que ver se já fez 3 acertos
	}
    override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
    func playSound() {
        if let soundURL = Bundle.main.path(forResource: "Efeito-ACERTO", ofType: "mp3") {
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
