//
//  OnboardingViewController + Extention.swift
//  CarbonApp
//
//  Created by Decagon on 12/04/2022.
//

import Foundation
import UIKit
import Lottie

extension OnboardingScreenViewController {
    
    class ScreenOne: UIViewController {
        
        let upperBarButton : UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Skip", for: .normal)
            button.setTitleColor(#colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1), for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
            button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
            return button
        }()
        
        let straightLine : UIView = {
           let line = UIView()
            line.backgroundColor = .lightGray
            line.heightAnchor.constraint(equalToConstant: 1).isActive = true
            line.translatesAutoresizingMaskIntoConstraints = false
            return line
        }()
        
        let logoImage : UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFit
            image.image = UIImage(named: "carbonlogo")
            image.translatesAutoresizingMaskIntoConstraints = false
            image.heightAnchor.constraint(equalToConstant: 50).isActive = true
         return image
        }()
        
        
        let animationView : UIView = {
            let animationView = UIView()
            animationView.translatesAutoresizingMaskIntoConstraints = false
            
            
            var displayAnimation : AnimationView = {
                var animation = AnimationView()
                animation.translatesAutoresizingMaskIntoConstraints = false
                animation = .init(name: "mobilebanking")
                
                animation.loopMode = .loop
                animation.animationSpeed = 2.5
                
                return animation
            }()
            
            
            displayAnimation.frame = CGRect(x: animationView.frame.width, y: animationView.frame.height, width: 250, height: 250)
            animationView.addSubview(displayAnimation)
            animationView.sendSubviewToBack(displayAnimation)
            return animationView
        }()
       
        
        
        
        let welcomeTitle : UILabel = {
            let title = UILabel()
            title.text = "Go beyond banking"
            title.numberOfLines = 0
            title.font = .systemFont(ofSize: 22, weight: .bold)
            title.textAlignment = .center
            title.translatesAutoresizingMaskIntoConstraints = false
            return title
        }()
        
        
        
        let welcomeDescriptions : UILabel = {
            let details = UILabel()
            details.translatesAutoresizingMaskIntoConstraints = false
            details.numberOfLines = 0
            details.text = "Welcome to the future. Carbon is your passport to world-class financial services, built just for you."
            details.font = .systemFont(ofSize: 21, weight: .regular)
            details.textAlignment = .center
            details.translatesAutoresizingMaskIntoConstraints = false
            return details
        }()
        
        let signUpButton : UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Set up new account", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = #colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.9663655746, green: 0.9939873762, blue: 1, alpha: 1), for: .normal)
            button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
            button.layer.cornerRadius = 5
            button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            
            return button
        }()
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupDisplayView()
            view.backgroundColor = .white
        }
        
        @objc func buttonActionRegister() {
            let registerScreen = AccountCreationPageViewController()
            registerScreen.modalPresentationStyle = .fullScreen
            let navVC = UINavigationController(rootViewController: registerScreen)
            navigationController?.pushViewController(navVC, animated: true)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        @objc func buttonActionSignIn() {
            let signinScreen = SignInPageViewController()
            let navVC = UINavigationController(rootViewController: signinScreen)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        
        func setupDisplayView(){
            view.addSubview(upperBarButton)
            view.addSubview(straightLine)
            view.addSubview(logoImage)
            view.addSubview(welcomeTitle)
            view.addSubview(welcomeDescriptions)
            view.addSubview(signUpButton)
            view.addSubview(animationView)
            
            
            
            NSLayoutConstraint.activate([
                //Upper Bar Button
                upperBarButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                upperBarButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
                
                //Stright Line
                straightLine.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
                straightLine.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
                straightLine.topAnchor.constraint(equalTo: upperBarButton.bottomAnchor, constant: 8),
                
                //image Logo
                logoImage.topAnchor.constraint(equalTo: straightLine.bottomAnchor, constant: 20),
                logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                //Animation view constraint
                animationView.widthAnchor.constraint(equalToConstant: 250),
                animationView.heightAnchor.constraint(equalToConstant: 250),
                animationView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 20),
                animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
                
                //sign up Button
                signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
                signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
                signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
                
                //Detail Title label
                welcomeDescriptions.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -70),
                welcomeDescriptions.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeDescriptions.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
                // welcome Title Label
                welcomeTitle.bottomAnchor.constraint(equalTo: welcomeDescriptions.topAnchor, constant: -20),
                welcomeTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
            ])
            
        }
    }
}


//MARK: Second Screen of Onboarding View Controller

extension OnboardingScreenViewController {
    
    class ScreenTwo: UIViewController {
        
        let upperBarButton : UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Sign in", for: .normal)
            button.setTitleColor(#colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1), for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
            button.addTarget(self, action: #selector(buttonActionSignIn), for: .touchUpInside)
            return button
        }()
        
        let straightLine : UIView = {
           let line = UIView()
            line.backgroundColor = .lightGray
            line.heightAnchor.constraint(equalToConstant: 1).isActive = true
            line.translatesAutoresizingMaskIntoConstraints = false
            return line
        }()
        
        let logoImage : UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFit
            image.image = UIImage(named: "carbonlogo")
            image.translatesAutoresizingMaskIntoConstraints = false
            image.heightAnchor.constraint(equalToConstant: 50).isActive = true
         return image
        }()
        
        let animationView : UIView = {
            let animationView = UIView()
            animationView.translatesAutoresizingMaskIntoConstraints = false
            
            
            var displayAnimation : AnimationView = {
                var animation = AnimationView()
                animation.translatesAutoresizingMaskIntoConstraints = false
                animation = .init(name: "onlinepayment")
                animation.play()
                animation.loopMode = .loop
                animation.animationSpeed = 2.5
                
                return animation
            }()
            
            
            displayAnimation.frame = CGRect(x: animationView.frame.width, y: animationView.frame.height, width: 250, height: 250)
            animationView.addSubview(displayAnimation)
            animationView.sendSubviewToBack(displayAnimation)
            return animationView
        }()
       
        
        
        
        let welcomeTitle : UILabel = {
            let title = UILabel()
            title.text = "Stay on top of your finances. Anytime. Anywhere"
            title.numberOfLines = 0
            title.font = .systemFont(ofSize: 22, weight: .bold)
            title.textAlignment = .center
            title.translatesAutoresizingMaskIntoConstraints = false
            return title
        }()
        
        
        
        let welcomeDescriptions : UILabel = {
            let details = UILabel()
            details.translatesAutoresizingMaskIntoConstraints = false
            details.numberOfLines = 0
            details.text = "Carbon makes financial services faster, cheaper and more convenient. You can access the app 24/7, wherever you are."
            details.font = .systemFont(ofSize: 21, weight: .regular)
            details.textAlignment = .center
            details.translatesAutoresizingMaskIntoConstraints = false
            return details
        }()
        
        let signUpButton : UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Set up new account", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = #colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.9663655746, green: 0.9939873762, blue: 1, alpha: 1), for: .normal)
            button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
            button.layer.cornerRadius = 5
            button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            
            return button
        }()
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupDisplayView()
            view.backgroundColor = .white
        }
        
        @objc func buttonActionRegister() {
            let registerScreen = AccountCreationPageViewController()
            registerScreen.modalPresentationStyle = .fullScreen
            let navVC = UINavigationController(rootViewController: registerScreen)
            navigationController?.pushViewController(navVC, animated: true)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        @objc func buttonActionSignIn() {
            let signinScreen = SignInPageViewController()
            let navVC = UINavigationController(rootViewController: signinScreen)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        
        func setupDisplayView(){
            view.addSubview(upperBarButton)
            view.addSubview(straightLine)
            view.addSubview(logoImage)
            view.addSubview(welcomeTitle)
            view.addSubview(welcomeDescriptions)
            view.addSubview(signUpButton)
            view.addSubview(animationView)
            
            NSLayoutConstraint.activate([
                //Upper Bar Button
                upperBarButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                upperBarButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
                
                //Stright Line
                straightLine.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
                straightLine.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
                straightLine.topAnchor.constraint(equalTo: upperBarButton.bottomAnchor, constant: 8),
                
                //image Logo
                logoImage.topAnchor.constraint(equalTo: straightLine.bottomAnchor, constant: 20),
                logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                //Animation view constraint
                animationView.widthAnchor.constraint(equalToConstant: 250),
                animationView.heightAnchor.constraint(equalToConstant: 250),
                animationView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 20),
                animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
                
                //sign up Button
                signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
                signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
                signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
                
                //Detail Title label
                welcomeDescriptions.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -70),
                welcomeDescriptions.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeDescriptions.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
                // welcome Title Label
                welcomeTitle.bottomAnchor.constraint(equalTo: welcomeDescriptions.topAnchor, constant: -20),
                welcomeTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
            ])
            
        }
    }
}

//MARK: Third Screen of Onboarding View Controller

extension OnboardingScreenViewController {
    
    class ScreenThree: UIViewController {
        
        let upperBarButton : UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Sign in", for: .normal)
            button.setTitleColor(#colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1), for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
            button.addTarget(self, action: #selector(buttonActionSignIn), for: .touchUpInside)
            return button
        }()
        
        let straightLine : UIView = {
           let line = UIView()
            line.backgroundColor = .lightGray
            line.heightAnchor.constraint(equalToConstant: 1).isActive = true
            line.translatesAutoresizingMaskIntoConstraints = false
            return line
        }()
        
        let logoImage : UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFit
            image.image = UIImage(named: "carbonlogo")
            image.translatesAutoresizingMaskIntoConstraints = false
            image.heightAnchor.constraint(equalToConstant: 50).isActive = true
         return image
        }()
        
        let animationView : UIView = {
            let animationView = UIView()
            animationView.translatesAutoresizingMaskIntoConstraints = false
            
            
            var displayAnimation : AnimationView = {
                var animation = AnimationView()
                animation.translatesAutoresizingMaskIntoConstraints = false
                animation = .init(name: "people")
                animation.play()
                animation.loopMode = .loop
                animation.animationSpeed = 2.5
                
                return animation
            }()
            
            
            displayAnimation.frame = CGRect(x: animationView.frame.width, y: animationView.frame.height, width: 250, height: 250)
            animationView.addSubview(displayAnimation)
            animationView.sendSubviewToBack(displayAnimation)
            return animationView
        }()
       
        
        
        
        let welcomeTitle : UILabel = {
            let title = UILabel()
            title.text = "Trusted by millions"
            title.numberOfLines = 0
            title.font = .systemFont(ofSize: 22, weight: .bold)
            title.textAlignment = .center
            title.translatesAutoresizingMaskIntoConstraints = false
            return title
        }()
        
        
        
        let welcomeDescriptions : UILabel = {
            let details = UILabel()
            details.translatesAutoresizingMaskIntoConstraints = false
            details.numberOfLines = 0
            details.text = "With Carbon's market-leading service already used by millions of people just like you, you're in very good company."
            details.font = .systemFont(ofSize: 21, weight: .regular)
            details.textAlignment = .center
            details.translatesAutoresizingMaskIntoConstraints = false
            return details
        }()
        
        let signUpButton : UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Set up new account", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = #colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.9663655746, green: 0.9939873762, blue: 1, alpha: 1), for: .normal)
            button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
            button.layer.cornerRadius = 5
            button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            
            return button
        }()
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupDisplayView()
            view.backgroundColor = .white
        }
        
        @objc func buttonActionRegister() {
            let registerScreen = AccountCreationPageViewController()
            registerScreen.modalPresentationStyle = .fullScreen
            let navVC = UINavigationController(rootViewController: registerScreen)
            navigationController?.pushViewController(navVC, animated: true)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        @objc func buttonActionSignIn() {
            let signinScreen = SignInPageViewController()
            let navVC = UINavigationController(rootViewController: signinScreen)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
        
        
        func setupDisplayView(){
            view.addSubview(upperBarButton)
            view.addSubview(straightLine)
            view.addSubview(logoImage)
            view.addSubview(welcomeTitle)
            view.addSubview(welcomeDescriptions)
            view.addSubview(signUpButton)
            view.addSubview(animationView)
          
            
            NSLayoutConstraint.activate([
                //Upper Bar Button
                upperBarButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                upperBarButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
                
                //Stright Line
                straightLine.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
                straightLine.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
                straightLine.topAnchor.constraint(equalTo: upperBarButton.bottomAnchor, constant: 8),
                
                //image Logo
                logoImage.topAnchor.constraint(equalTo: straightLine.bottomAnchor, constant: 20),
                logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                //Animation view constraint
                animationView.widthAnchor.constraint(equalToConstant: 250),
                animationView.heightAnchor.constraint(equalToConstant: 250),
                animationView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 20),
                animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
                
                //sign up Button
                signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
                signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
                signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
                
                //Detail Title label
                welcomeDescriptions.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -70),
                welcomeDescriptions.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeDescriptions.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
                // welcome Title Label
                welcomeTitle.bottomAnchor.constraint(equalTo: welcomeDescriptions.topAnchor, constant: -20),
                welcomeTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),
                welcomeTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
                
            ])
            
        }
    }
}
