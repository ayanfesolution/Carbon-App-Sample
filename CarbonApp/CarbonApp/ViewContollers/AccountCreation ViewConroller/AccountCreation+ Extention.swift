//
//  AccountCreation+ Extention.swift
//  CarbonApp
//
//  Created by Decagon on 14/04/2022.
//

import Foundation
import UIKit

extension AccountCreationPageViewController {
    
    func setupSubViews() {
        view.addSubview(welcomeGreetingsLabel)
        firstNameStackView.addArrangedSubview(firstNameLabel)
        firstNameStackView.addArrangedSubview(firstNameTextField)
        firstAndMiddleNameStackView.addArrangedSubview(firstNameStackView)
        middleNameStackView.addArrangedSubview(middleNameLabel)
        middleNameStackView.addArrangedSubview(middleNameTextField)
        firstAndMiddleNameStackView.addArrangedSubview(middleNameStackView)
        view.addSubview(firstAndMiddleNameStackView)
        lastNameStackView.addArrangedSubview(lastNameLabel)
        lastNameStackView.addArrangedSubview(lastNameTextField)
        view.addSubview(lastNameStackView)
        phoneNumberStackView.addArrangedSubview(phoneNumberLabel)
        phoneNumberStackView.addArrangedSubview(phoneNumberTextField)
        phoneNumberAndGenderStackView.addArrangedSubview(phoneNumberStackView)
        genderStackView.addArrangedSubview(genderLabel)
        genderStackView.addArrangedSubview(genderTextField)
        phoneNumberAndGenderStackView.addArrangedSubview(genderStackView)
        view.addSubview(phoneNumberAndGenderStackView)
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextField)
        view.addSubview(emailStackView)
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        view.addSubview(passwordStackView)
        view.addSubview(termsLabel)
        view.addSubview(termsButton)
        view.addSubview(termsLowerLabel)
        view.addSubview(termsLowerButton)
        view.addSubview(createAccountButton)
        
        
                
        NSLayoutConstraint.activate([
            //welcomeGreetings Label Constriants
            welcomeGreetingsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeGreetingsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            welcomeGreetingsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            //firstNameStackView
            firstAndMiddleNameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            firstAndMiddleNameStackView.topAnchor.constraint(equalTo: welcomeGreetingsLabel.bottomAnchor, constant: 15),
            firstAndMiddleNameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            //lastNameStackView
            lastNameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            lastNameStackView.topAnchor.constraint(equalTo: firstAndMiddleNameStackView.bottomAnchor, constant: 15),
            lastNameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            //Phone Number and Gender Constraints
            phoneNumberAndGenderStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            phoneNumberAndGenderStackView.topAnchor.constraint(equalTo: lastNameStackView.bottomAnchor, constant: 15),
            phoneNumberAndGenderStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            //emailStackView Constraints
            emailStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailStackView.topAnchor.constraint(equalTo: phoneNumberAndGenderStackView.bottomAnchor, constant: 15),
            emailStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            //passwordStackView Constraints
            passwordStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 15),
            passwordStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),

            // terms and condition segment constraints
            termsLowerLabel.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -10),
            termsLowerLabel.rightAnchor.constraint(equalTo: termsLowerButton.leftAnchor),
            termsLowerButton.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -5),
            termsLowerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            termsLabel.bottomAnchor.constraint(equalTo: termsLowerButton.topAnchor, constant: -3),
            termsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            termsButton.bottomAnchor.constraint(equalTo: termsLowerButton.topAnchor, constant: 2),
            termsButton.leftAnchor.constraint(equalTo: termsLabel.rightAnchor),
            
            
            //create Account Button Constraints
            createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            createAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            createAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25)
            
        ])
    }
}
