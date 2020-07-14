//
//  MenuViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        player?.play()
    }
	
	@IBAction func resetAction(_ sender: Any) {
//		resetar
	}
	
	override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
	
    func playSound() {
        if let soundURL = Bundle.main.path(forResource: "Efeito-INTRO", ofType: "mp3") {
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
