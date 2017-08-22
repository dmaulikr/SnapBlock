//
//  Pixel.swift
//  SnapBlock
//
//  Created by Salil Thakur on 8/22/17.
//  Copyright © 2017 Salil Thakur. All rights reserved.
//

import Foundation
import UIKit

struct Pixel {
  
  let row: Int
  let col: Int
  var color: PixelColor {
    didSet {
      switch color {
      case .empty:
        self.view.backgroundColor = UIColor.pixelEmpty
      case .filled:
        self.view.backgroundColor = UIColor.pixelFilled
      case .hover:
        self.view.backgroundColor = UIColor.pixelHover
      }
    }
  }
  var view = UIView()
  
  enum PixelColor: String {
    case empty
    case filled
    case hover
  }
}
