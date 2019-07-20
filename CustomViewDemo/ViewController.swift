//
//  ViewController.swift
//  CustomView
//
//  Created by Andreas Link on 11.07.19.
//  Copyright © 2019 Andreas Link. All rights reserved.
//

import CustomView
import UIKit

class ViewController: UIViewController {
    @IBOutlet private var stackView: UIStackView!

    // 1. Variant: Storyboard
    @IBOutlet private var loginView1: LoginView!

    // 2. Variant: Programmatically using ContainerView
    private lazy var loginView2: LoginView = .init()
    @IBOutlet private var loginView2ContainerView: ContainerView!

    // 3. Variant: Programmaactticaly
    private lazy var loginView3: LoginView = .init()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. Variant:
        loginView1.backgroundColor = .green

        // 2. Variant: Programmatically using ContainerView
        loginView2ContainerView.contentView = loginView2
        loginView2.backgroundColor = .red

        // 3. Variant: Programmatically
        loginView3.backgroundColor = .blue
        stackView.addArrangedSubview(loginView3)
    }
}

