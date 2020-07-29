//
//  AudioProtocol.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 29/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AudioPlayer: UIViewController {
	
	var musicName: String {
		get {""}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		AudioManager.playSound(name: self.musicName)
		AudioManager.player.play()
		StateManager.startManager()
	}
	override func viewWillDisappear(_ animated: Bool) {
		AudioManager.player.stop()
	}
}
