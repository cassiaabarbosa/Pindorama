//
//  SelectionViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit
import AVFoundation

class SelectionViewController: UIViewController {

	@IBOutlet var north: UICollectionView!
	@IBOutlet var northeast: UICollectionView!
	@IBOutlet var south: UICollectionView!
	@IBOutlet var southeast: UICollectionView!
	@IBOutlet var midwest: UICollectionView!
	var viewModel = SelectionViewModel()
    var player: AVAudioPlayer?
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		north.delegate = self
		north.dataSource = self
		northeast.delegate = self
		northeast.dataSource = self
		south.delegate = self
		south.dataSource = self
		southeast.delegate = self
		southeast.dataSource = self
		midwest.delegate = self
		midwest.dataSource = self
        playSound()
        player?.play()
		StateManager.startManager()
    }
}

extension SelectionViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		switch collectionView {
			case north:
				return 7
			case northeast:
				return 9
			case south:
				return 3
			case southeast:
				return	4
			default:
				return 4
		}
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		switch collectionView {
			case north:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NorthCell", for: indexPath) as? NorthCollectionCell {
					if StateManager.getStateRightAnswers(state: indexPath.row) < 3 {
						cell.stateFlag.image = UIImage(named: viewModel.flagBlackImages[indexPath.row])
					} else {
						cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row])
					}
					return cell
			}
			case northeast:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NortheastCell", for: indexPath) as? NortheastCollectionCell {
						if StateManager.getStateRightAnswers(state: indexPath.row + 7) < 3 {
							cell.stateFlag.image = UIImage(named: viewModel.flagBlackImages[indexPath.row + 7])
						} else {
							cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 7])
						}
						return cell
				}
			case south:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SouthCell", for: indexPath) as? SouthCollectionCell {
						if StateManager.getStateRightAnswers(state: indexPath.row + 16) < 3 {
							cell.stateFlag.image = UIImage(named: viewModel.flagBlackImages[indexPath.row + 16])
						} else {
							cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 16])
						}
						return cell
				}
			case southeast:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SoutheastCell", for: indexPath) as? SoutheastCollectionCell {
						if StateManager.getStateRightAnswers(state: indexPath.row + 19) < 3 {
							cell.stateFlag.image = UIImage(named: viewModel.flagBlackImages[indexPath.row + 19])
						} else {
							cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 19])
						}
						return cell
				}
			default:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MidwestCell", for: indexPath) as? MidwestCollectionCell {
						if StateManager.getStateRightAnswers(state: indexPath.row + 23) < 3 {
							cell.stateFlag.image = UIImage(named: viewModel.flagBlackImages[indexPath.row + 23])
						} else {
							cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 23])
						}
						return cell
				}
		}
		return UICollectionViewCell()
	}
}

extension SelectionViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: self.view.frame.width * 0.06 * 1.77, height: self.view.frame.width * 0.06)
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let specificVC = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
		
		switch collectionView {
			case north:
				specificVC?.state = viewModel.flagImages[indexPath.row]
			case northeast:
				specificVC?.state = viewModel.flagImages[indexPath.row + 7]
			case south:
				specificVC?.state = viewModel.flagImages[indexPath.row + 16]
			case southeast:
				specificVC?.state = viewModel.flagImages[indexPath.row + 19]
			default:
				specificVC?.state = viewModel.flagImages[indexPath.row + 23]
		}
		self.show(specificVC ?? QuestionViewController(), sender: nil)
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

