//
//  LoginView.swift
//  CustomView
//
//  Created by Andreas Link on 11.07.19.
//  Copyright © 2019 Andreas Link. All rights reserved.
//

import CustomView
import UIKit

@IBDesignable
class LoginView: CustomView {
    @IBOutlet private var usernameTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!

    override func setupUI() {
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
    }
}
