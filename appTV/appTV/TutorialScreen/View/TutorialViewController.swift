//
//  TutorialViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation
class TutorialViewController: UIViewController {
	
	var player: AVAudioPlayer?
    
	override func viewDidLoad() {
		playSound()
		player?.play()
    }
	
	override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
	
	func playSound() {
        if let soundURL = Bundle.main.path(forResource: "Efeito-TUTORIAL", ofType: "mp3") {
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
