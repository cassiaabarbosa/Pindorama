//
//  AnswerViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 10/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

	@IBOutlet var background: UIImageView!
	@IBOutlet var label: UILabel!
	@IBOutlet var person: UIImageView!
	
	var type: String?
	
	override func viewDidLoad() {
        super.viewDidLoad()

		switch type {
			case "right":
				background.image = UIImage(named: "blocorespostacerta")
				label.text = "Você acertou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
			default:
				background.image = UIImage(named: "blocorespostaerrada")
				label.text = "Você errou a resposta..."
				person.image = UIImage(named: "presidenteatualcomfaixa")
		}
    }
	
	@IBAction func nextAsking(_ sender: Any) {
//		tem que ver se já fez 3 acertos
	}
}
