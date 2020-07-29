//
//  VictoryScreenButtonFocused.swift
//  appTV
//
//  Created by Luiz Henrique Monteiro de Carvalho on 28/07/20.
//  Copyright © 2020 com.cassiaabarbosa. All rights reserved.
//

import Foundation
import UIKit

class VictoryScreenButtonFocused: UIButton {
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if context.nextFocusedView === self{
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
            })
        }
        if context.previouslyFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
    }
}
