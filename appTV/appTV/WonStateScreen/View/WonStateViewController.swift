//
//  WonStateViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 16/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class WonStateViewController: UIViewController {
	
	var player: AVAudioPlayer?
	var state: String?
	var viewModel = WonStateViewModel()
	@IBOutlet var nameState: UILabel!
	@IBOutlet var background: UIImageView!
	@IBOutlet var flag: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let visual = viewModel.generateVisuals(state: state!)
		nameState.text = visual.0
		background.image = UIImage(named: visual.1)
		background.alpha = 0.5
		flag.image = UIImage(named: visual.2)
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
			
		}
	}
}
