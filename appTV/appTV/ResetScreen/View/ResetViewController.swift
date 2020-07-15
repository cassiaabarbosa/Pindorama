//
//  ResetViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 15/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import Foundation
import UIKit

class ResetViewControlle: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func resetAction(_ sender: Any) {
		
		UserDefaults.standard.removeObject(forKey: StateManager.key)
		
		let storyBoard = UIStoryboard(name: "Main", bundle: nil)
		let viewController = storyBoard.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
		self.show(viewController ?? MenuViewController(), sender: nil)

	}
}
