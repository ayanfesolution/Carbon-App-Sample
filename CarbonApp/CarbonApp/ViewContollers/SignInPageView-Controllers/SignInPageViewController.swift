//
//  SignInPageViewController.swift
//  CarbonApp
//
//  Created by Decagon on 09/04/2022.
//

import UIKit

class SignInPageViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(LogoImage)
        view.addSubview(WelcomeGreetingsTextLabel)
        view.addSubview(LoginDetailsStackView)
        view.addSubview(BottomDtailsStackView)
        view.addSubview(LoginButton)
        setUpConstraints()
    }
    
    
    let LogoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "carbonlogo")
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    let WelcomeGreetingsTextLabel: UILabel = {
       let welcomeText = UILabel()
        welcomeText.text = "Hi there, welcome back. Please sign in."
        welcomeText.textAlignment = .center
        welcomeText.textColor = .black
        welcomeText.font = UIFont(name: "body", size: 25.0)
        welcomeText.translatesAutoresizingMaskIntoConstraints = false
        
        return welcomeText
    }()
    
  
    let LoginDetailsStackView: UIStackView = {
        let loginDetail = UIStackView()
        loginDetail.distribution = UIStackView.Distribution.equalSpacing
        loginDetail.spacing = 10
        loginDetail.axis = NSLayoutConstraint.Axis.vertical
        loginDetail.translatesAutoresizingMaskIntoConstraints = false
    
        let EmailStackView: UIStackView = {
            let emailStackView = UIStackView()
            
            
            let EmailTextLabel: UILabel = {
               let email = UILabel()
                email.text = "Email Address"
                email.textAlignment = .left
                email.textColor = #colorLiteral(red: 0.3490196078, green: 0.3764705882, blue: 0.431372549, alpha: 1)
                email.translatesAutoresizingMaskIntoConstraints = false
                
                
                return email
            }()
            
            let EmailTextField: UITextField = {
               let email = UITextField()
                email.layer.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9450980392, blue: 0.968627451, alpha: 1)
                email.layer.cornerRadius = 5
                email.translatesAutoresizingMaskIntoConstraints = false
                email.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
                
                
                return email
            }()
            
            emailStackView.axis = NSLayoutConstraint.Axis.vertical
            emailStackView.distribution = UIStackView.Distribution.equalSpacing
            emailStackView.spacing = 10
            emailStackView.translatesAutoresizingMaskIntoConstraints = false
            emailStackView.addArrangedSubview(EmailTextLabel)
            emailStackView.addArrangedSubview(EmailTextField)
            
            return emailStackView
        }()
        
        let passwordLabel: UILabel = {
           let password = UILabel()
            password.text = "Password"
            password.textAlignment = .left
            
            password.textColor = #colorLiteral(red: 0.3490196078, green: 0.3764705882, blue: 0.431372549, alpha: 1)
            password.translatesAutoresizingMaskIntoConstraints = false
            return password
        }()
        
        let PasswordTextField: UITextField = {
           let password = UITextField()
            password.layer.cornerRadius = 5
            password.isSecureTextEntry = true
            
            password.layer.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9450980392, blue: 0.968627451, alpha: 1)
            password.heightAnchor.constraint(equalToConstant: 50).isActive = true
            password.translatesAutoresizingMaskIntoConstraints = false
            
            
            return password
        }()
        
        let PasswordStackView: UIStackView = {
            let passwordStackView = UIStackView()
            
            passwordStackView.axis = NSLayoutConstraint.Axis.vertical
            passwordStackView.distribution = UIStackView.Distribution.equalSpacing
            passwordStackView.spacing = 10
            
            passwordStackView.addArrangedSubview(passwordLabel)
            passwordStackView.addArrangedSubview(PasswordTextField)
            
            return passwordStackView
        }()
        
        loginDetail.addArrangedSubview(EmailStackView)
        loginDetail.addArrangedSubview(PasswordStackView)
        
        
        return loginDetail
    }()
    
    
    
    
    let LoginButton: UIButton = {
        let btu = UIButton()
        btu.updateConfiguration()
        btu.layer.cornerRadius = 4
        btu.translatesAutoresizingMaskIntoConstraints = false
        
        return btu
    }()
    
    let BottomDtailsStackView: UIStackView = {
        let details = UIStackView()
        details.distribution = UIStackView.Distribution.fillProportionally
        details.axis = NSLayoutConstraint.Axis.horizontal
        details.spacing = -16
        details.alignment = .center
        details.translatesAutoresizingMaskIntoConstraints = false
        
        
        let InfoLabel: UILabel = {
           let info = UILabel()
            info.text = "New to Carbon?"
            info.textColor = .label
            info.textAlignment = .right
            info.translatesAutoresizingMaskIntoConstraints = false
            
           return info
        }()
        
        let SignUpButton: UIButton = {
            let btu = UIButton(type: .system)
            
            btu.setTitle("Set up new account", for: .normal)
            btu.titleLabel?.font = .boldSystemFont(ofSize: 19)
            btu.titleLabel?.textAlignment = .left
            btu.setTitleColor( #colorLiteral(red: 0.2235294118, green: 0.1019607843, blue: 0.5137254902, alpha: 1), for: .normal)
            btu.translatesAutoresizingMaskIntoConstraints = false
            btu.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
            
            return btu
        }()
        
        details.addArrangedSubview(InfoLabel)
        details.addArrangedSubview(SignUpButton)
        return details
    }()
       
    @objc func buttonActionRegister() {
        let registerScreen = AccountCreationPageViewController()
        registerScreen.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(registerScreen, animated: true)
    }
   
}
