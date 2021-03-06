//
//  UIView+AutoLayout.swift
//  DivingBoard
//
//  Created by Jim Rhoades on 2/19/18.
//  Copyright © 2018 Crush Apps. All rights reserved.
//

import UIKit

public extension UIView {
    
    /**
     Adds a subview along with autolayout constraints to center it within the view.
     
     - Parameter viewToAdd: The UIView to add as a subview.
    */
    public func addCenteredSubview(_ viewToAdd: UIView) {
        viewToAdd.translatesAutoresizingMaskIntoConstraints = false
        addSubview(viewToAdd)
        let widthConstraint = NSLayoutConstraint(item: viewToAdd, attribute: .width,
                                                 relatedBy: .equal, toItem: nil,
                                                 attribute: .notAnAttribute, multiplier: 1.0,
                                                 constant: viewToAdd.frame.size.width)
        let heightConstraint = NSLayoutConstraint(item: viewToAdd, attribute: .height,
                                                  relatedBy: .equal, toItem: nil,
                                                  attribute: .notAnAttribute, multiplier: 1.0,
                                                  constant: viewToAdd.frame.size.height)
        let xConstraint = NSLayoutConstraint(item: viewToAdd, attribute: .centerX,
                                             relatedBy: .equal, toItem: self, attribute: .centerX,
                                             multiplier: 1.0, constant: 0)
        let yConstraint = NSLayoutConstraint(item: viewToAdd, attribute: .centerY,
                                             relatedBy: .equal, toItem: self, attribute: .centerY,
                                             multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([xConstraint, yConstraint, widthConstraint, heightConstraint])
    }
}
