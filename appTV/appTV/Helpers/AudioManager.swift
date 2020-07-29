//
//  AudioManager.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 29/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import Foundation
import  UIKit
import AVFoundation

struct AudioManager {
	
	static let introducao = "Efeito-INTRO"
	static let tutorial = "Efeito-TUTORIAL"
	static let centroOeste = "Efeito-CENTRO-OESTE"
	static let nordeste = "Efeito-NORDESTE"
	static let acerto = "Efeito-ACERTO"
	static let erro = "Efeito-ERRO"
	static let norte = "Efeito-NORTE"
	static let sudeste = "Efeito-SUDESTE"
	static let sul = "Efeito-SUL"
	static let vitoria = "Efeito-VITORIA"
	static var player: AVAudioPlayer = AVAudioPlayer()
	
	static func playSound(name: String) {
        if let soundURL = Bundle.main.path(forResource: name, ofType: "mp3") {
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
                try AVAudioSession.sharedInstance().setActive(true)
				player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL))
				player.numberOfLoops = -1
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("Não foi possível encontrar o arquivo ou a configuração está desabilitada")
        }
    }
}
