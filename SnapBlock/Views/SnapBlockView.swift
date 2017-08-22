//
//  SnapBlockView.swift
//  SnapBlock
//
//  Created by Salil Thakur on 8/20/17.
//  Copyright © 2017 Salil Thakur. All rights reserved.
//

import UIKit

class SnapBlockView: UIView {
  
  var grid = [[Pixel]]()
  
  private let gridLength: Int = 10
  
  private var pixelLength: CGFloat {
    return bounds.width / CGFloat(gridLength)
  }
  
  override func draw(_ rect: CGRect) {
    configureGrid()
  }
  
  private func configureGrid() {
    for i in 0..<gridLength {
      var row = [Pixel]()
      for j in 0..<gridLength {
        let pixelFrame = CGRect(x: pixelLength * CGFloat(i),
                                y: pixelLength * CGFloat(j),
                                width: pixelLength,
                                height: pixelLength)
        
        let pixelView = configurePixelView(frame: pixelFrame)
        let pixel = Pixel(row: i, col: j, color: .empty, view: pixelView)
        
        self.addSubview(pixel.view)
        row.append(pixel)
      }
      self.grid.append(row)
    }
  }
  
  private func configurePixelView(frame: CGRect) -> UIView {
    let view = UIView.init(frame: frame)
    view.backgroundColor = UIColor.pixelEmpty
    view.layer.borderColor = UIColor.gray.cgColor
    view.layer.borderWidth = 0.5
    
    return view
  }
}
