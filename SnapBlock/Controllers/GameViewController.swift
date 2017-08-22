//
//  GameViewController.swift
//  SnapBlock
//
//  Created by Salil Thakur on 8/20/17.
//  Copyright © 2017 Salil Thakur. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
  
  @IBOutlet weak var snapBlockView: SnapBlockView! {
    didSet {
      let tapRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(tapPixel))
      tapRecognizer.numberOfTapsRequired = 1
      snapBlockView.addGestureRecognizer(tapRecognizer)
    }
  }
  
  func tapPixel() {
    snapBlockView?.grid[0][0].color = .empty
    snapBlockView?.grid[9][9].color = .filled
    snapBlockView?.grid[5][5].color = .hover
  }
}

