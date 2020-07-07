//
//  SelectionViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

	@IBOutlet var north: UICollectionView!
	@IBOutlet var northeast: UICollectionView!
	@IBOutlet var south: UICollectionView!
	@IBOutlet var southeast: UICollectionView!
	@IBOutlet var midwest: UICollectionView!
	var viewModel = SelectionViewModel()
	
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
		
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
					cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row])
					return cell
			}
			case northeast:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NortheastCell", for: indexPath) as? NortheastCollectionCell {
					cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 7])
					return cell
			}
			case south:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SouthCell", for: indexPath) as? SouthCollectionCell {
					cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 16])
					return cell
			}
			case southeast:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SoutheastCell", for: indexPath) as? SoutheastCollectionCell {
					cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 19])
					return cell
			}
			default:
				if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MidwestCell", for: indexPath) as? MidwestCollectionCell {
					cell.stateFlag.image = UIImage(named: viewModel.flagImages[indexPath.row + 23])
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
}

