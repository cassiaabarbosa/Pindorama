//
//  MenuViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

	@IBOutlet var play: UIButton!
	override func viewDidLoad() {
        super.viewDidLoad()

		if let aux = UserDefaults.standard.object(forKey: "stateArray") as? Int {
			play.setTitle("PLAYYYY\(aux) ", for: .normal)
		}
        // Do any additional setup after loading the view.
    }

	@IBAction func playButton(_ sender: Any) {
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
