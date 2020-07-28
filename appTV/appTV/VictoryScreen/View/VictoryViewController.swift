//
//  VictoryViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class VictoryViewController: UIViewController {
	
	var player: AVAudioPlayer?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		playSound()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		player?.stop()
	}
	
	func playSound() {
		if let soundURL = Bundle.main.path(forResource: "Efeito-VITORIA", ofType: "mp3") {
			do {
				try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
				try AVAudioSession.sharedInstance().setActive(true)
				player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
				player?.play()
			} catch {
				print(error.localizedDescription)
			}
		} else {
			print("Não foi possível encontrar o arquivo ou a configuração está desabilitada")
		}
	}
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if context.nextFocusedView === self{
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
            })
        }
        if context.previouslyFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
    }
}
