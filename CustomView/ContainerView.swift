//
//  ContainerView.swift
//  CustomView
//
//  Created by Andreas Link on 20.07.19.
//  Copyright © 2019 Andreas Link. All rights reserved.
//

import UIKit

/// A view that can be used for layouting purposes and can exchange its content dynamically
public class ContainerView: UIView {
    /// The content view managed by the container
    public var contentView: UIView? {
        willSet {
            guard newValue !== contentView else { return }

            subviews.forEach { $0.removeFromSuperview() }
        }

        didSet {
            guard let contentView = contentView, oldValue !== contentView else { return }

            addSubview(contentView)

            contentView.translatesAutoresizingMaskIntoConstraints = false
            contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        }
    }
}
