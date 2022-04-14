//
//  SignInPageViewController + Extension.swift
//  CarbonApp
//
//  Created by Decagon on 10/04/2022.
//

import Foundation
import UIKit

extension SignInPageViewController {
    
 

    func setUpConstraints() {
        
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        emailStackView.addArrangedSubview(emailTextLabel)
        emailStackView.addArrangedSubview(emailTextField)
        loginDetailsStackView.addArrangedSubview(emailStackView)
        loginDetailsStackView.addArrangedSubview(passwordStackView)
        
        var constraints = [NSLayoutConstraint]()
        //MARK: Add Constraints
        constraints.append(LogoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(LogoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100))
        constraints.append(LogoImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100))
        constraints.append(LogoImage.heightAnchor.constraint(equalToConstant: 50))
        
        constraints.append(WelcomeGreetingsTextLabel.topAnchor.constraint(equalTo: LogoImage.bottomAnchor))
        constraints.append(WelcomeGreetingsTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25))
        constraints.append(WelcomeGreetingsTextLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25))
        
        constraints.append(loginDetailsStackView.topAnchor.constraint(equalTo: WelcomeGreetingsTextLabel.bottomAnchor, constant: 20))
        constraints.append(loginDetailsStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20))
        constraints.append(loginDetailsStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20))
        constraints.append(WelcomeGreetingsTextLabel.heightAnchor.constraint(equalToConstant: 50))
        
        constraints.append(BottomDtailsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10))
        constraints.append(BottomDtailsStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30))
        constraints.append(BottomDtailsStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30))
        constraints.append(loginButton.topAnchor.constraint(equalTo: loginDetailsStackView.bottomAnchor, constant: 25))
        constraints.append(loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30))
        constraints.append(loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30))
        //MARK: Activating Constraints
        NSLayoutConstraint.activate(constraints)
        
        
    }
}
