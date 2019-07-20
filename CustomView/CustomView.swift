//
//  CustomView.swift
//  CustomView
//
//  Created by Andreas Link on 20.07.19.
//  Copyright © 2019 Andreas Link. All rights reserved.
//

import UIKit

open class CustomView: UIView {
    private var contentView: UIView!

    public init() {
        super.init(frame: .zero)

        commonInit()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        commonInit()
    }

    private func commonInit() {
        contentView = loadFromNib()
        addSubview(contentView)

        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        setupUI()
    }

    open func setupUI() {
        /* Meant to be overriden by subclasses */
    }
}
