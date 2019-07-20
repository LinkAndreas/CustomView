//
//  UINibExtensions.swift
//  CustomView
//
//  Created by Andreas Link on 20.07.19.
//  Copyright © 2019 Andreas Link. All rights reserved.
//

import UIKit

extension UIView {
    internal func loadFromNib(in bundle: Bundle? = nil) -> UIView {
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle ?? Bundle(for: type(of: self)))
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
