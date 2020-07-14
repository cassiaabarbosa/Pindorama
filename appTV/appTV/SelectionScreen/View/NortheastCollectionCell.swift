//
//  NortheastCollectionCell.swift
//  appTV
//
//  Created by Cassia Aparecida Barbosa on 07/07/20.
//  Copyright © 2020 com.CassiaABarbosa. All rights reserved.
//

import UIKit

class NortheastCollectionCell: UICollectionViewCell {
    
	@IBOutlet var stateFlag: UIImageView!
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
