//
//  QuestionViewController.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 06/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

	@IBOutlet var question: UILabel!
	@IBOutlet var firstAnswer: UIButton!
	@IBOutlet var secondAnswer: UIButton!
	@IBOutlet var thirdAnswer: UIButton!
	var state: String?
	var viewModel = QuestionViewModel()
	override func viewDidLoad() {
        super.viewDidLoad()
		
		viewModel.setStates()
		
		question.text = viewModel.generateAsking(state: state!).question
		firstAnswer.setTitle(viewModel.generateAsking(state: state!).rightAnswer, for: .normal)
		secondAnswer.setTitle(viewModel.generateAsking(state: state!).rightAnswer, for: .normal)
		thirdAnswer.setTitle(viewModel.generateAsking(state: state!).rightAnswer, for: .normal)
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
