//
//  PaddedLabel.swift
//  KhromaLike
//
//  Created by Scott Gardner on 11/2/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

class PaddedLabel: UILabel, UITraitEnvironment {
  var verticalPadding = 0.0
  
  override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
    if traitCollection.verticalSizeClass == .Compact {
      verticalPadding = 0.0
    } else {
      verticalPadding = 20.0
    }
    invalidateIntrinsicContentSize()
  }
  
  override func intrinsicContentSize() -> CGSize {
    var intrinsicSize = super.intrinsicContentSize()
    intrinsicSize.height += CGFloat(verticalPadding)
//    println(intrinsicSize.height)
    return intrinsicSize
  }
  
}
