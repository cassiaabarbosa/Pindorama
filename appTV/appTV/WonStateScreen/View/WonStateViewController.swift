//
//  WonStateViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 16/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class WonStateViewController: AudioPlayer {
	
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
	}
	
	override var musicName: String { AudioManager.vitoria}
}
