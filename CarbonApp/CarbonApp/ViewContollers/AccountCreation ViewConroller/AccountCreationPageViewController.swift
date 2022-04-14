//
//  AccountCreationPageViewController.swift
//  CarbonApp
//
//  Created by Decagon on 09/04/2022.
//

import UIKit

class AccountCreationPageViewController: UIViewController {
    
    let welcomeGreetingsLabel: UILabel = {
        let welcomeGreetings = UILabel()
        welcomeGreetings.translatesAutoresizingMaskIntoConstraints = false
        welcomeGreetings.text = "Let's set things up. Please fill out these basic details to get started."
        welcomeGreetings.textColor = .darkGray
        welcomeGreetings.textAlignment = .center
        welcomeGreetings.numberOfLines = 0
        welcomeGreetings.font = .systemFont(ofSize: 15)
        return welcomeGreetings
    }()
    
    let firstNameLabel: UILabel = {
        let firstName = UILabel()
        firstName.text = "First name"
        firstName.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return firstName
    }()
    
    let firstNameTextField: UITextField = {
        let firstName = UITextField()
        firstName.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        firstName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstName.layer.cornerRadius = 7
        firstName.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return firstName
    }()
    
    let firstNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
    
        return stackView
    }()
    
    let middleNameLabel: UILabel = {
        let middleName = UILabel()
        middleName.text = "Middle name"
        middleName.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return middleName
    }()
    
    let middleNameTextField: UITextField = {
        let middleName = UITextField()
        middleName.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        middleName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        middleName.layer.cornerRadius = 7
        middleName.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return middleName
    }()
    
    let middleNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5

        return stackView
    }()
    
    
    
    let firstAndMiddleNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let lastNameLabel: UILabel = {
        let lastName = UILabel()
        lastName.text = "Last name"
        lastName.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return lastName
    }()
    
    let lastNameTextField: UITextField = {
        let lastName = UITextField()
        lastName.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        lastName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        lastName.layer.cornerRadius = 7
        lastName.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return lastName
    }()
    
    let lastNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()
    
    let phoneNumberLabel: UILabel = {
        let phoneNumber = UILabel()
        phoneNumber.text = "Phone Number"
        phoneNumber.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return phoneNumber
    }()
    
    let phoneNumberTextField: UITextField = {
        let phoneNumber = UITextField()
        phoneNumber.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        phoneNumber.heightAnchor.constraint(equalToConstant: 50).isActive = true
        phoneNumber.layer.cornerRadius = 7
        phoneNumber.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return phoneNumber
    }()
    
    let phoneNumberStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        
        return stackView
    }()
    
    let genderLabel: UILabel = {
        let gender = UILabel()
        gender.text = "Gender"
        gender.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return gender
    }()
    
    let genderTextField: UITextField = {
        let gender = UITextField()
        gender.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        gender.heightAnchor.constraint(equalToConstant: 50).isActive = true
        gender.layer.cornerRadius = 7
        gender.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return gender
    }()
    
    
    let genderStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        
        return stackView
    }()
    
    
    
    let phoneNumberAndGenderStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
    
        return stackView
    }()
    
    
    
    
    //MARK: Email StackView
    
    let emailLabel: UILabel = {
        let email = UILabel()
        email.text = "Email Address"
        email.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return email
    }()
    
    let emailTextField: UITextField = {
        let email = UITextField()
        email.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        email.heightAnchor.constraint(equalToConstant: 50).isActive = true
        email.layer.cornerRadius = 7
        email.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return email
    }()
    
    
    let emailStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: Password StackView
    
    let passwordLabel: UILabel = {
        let password = UILabel()
        password.text = "Password"
        password.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return password
    }()
    
     let passwordTextField: UITextField = {
        let password = UITextField()
        password.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        password.layer.cornerRadius = 7
        password.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return password
    }()
    
    
    let passwordStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: CreateAccount Button
    let createAccountButton : UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5607843137, green: 0.5607843137, blue: 0.5607843137, alpha: 1)
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
//
//        button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
        
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
        return button
    }()

            let termsLabel: UILabel = {
                let terms = UILabel()
                terms.translatesAutoresizingMaskIntoConstraints = false
                terms.text = "By continuing, you accept our"
                terms.textAlignment = .right
                terms.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
                terms.font = .systemFont(ofSize: 15)
                return terms
            }()
            
            let termsButton : UIButton = {
                let button = UIButton(type: .system)
                button.setTitle(" Terms of Service", for: .normal)
                button.titleLabel?.textColor = .blue
                button.titleLabel?.font = .systemFont(ofSize: 15)
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
            
            let termsLowerLabel: UILabel = {
                let terms = UILabel()
                terms.translatesAutoresizingMaskIntoConstraints = false
                terms.text = "&"
                terms.textAlignment = .right
                terms.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
                return terms
            }()
            
            let termsLowerButton : UIButton = {
                let button = UIButton(type: .system)
                button.setTitle(" Privacy Policy", for: .normal)
                button.titleLabel?.textAlignment = .left
                button.translatesAutoresizingMaskIntoConstraints = false
//                button.titleLabel?.textColor = .blue
                
                return button
            }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Create your Carbon account"
        setupSubViews()
    }
    
    @objc func buttonActionRegister() {
        let profileScreen = ProfilePageViewController()
        profileScreen.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(profileScreen, animated: true)
        }
    
    @objc func handleSignUp() {
           validateForm()
       }
       
       func validateForm() {
           guard let emailText = emailTextField.text, !emailText.isEmpty else { return }
           guard let passwordText = passwordTextField.text, !passwordText.isEmpty else { return }
           guard let genderText = genderTextField.text, !genderText.isEmpty else { return }
           guard let phoneNumberText = genderTextField.text, !phoneNumberText.isEmpty else { return }
           guard let lastNameText = lastNameTextField.text, !lastNameText.isEmpty else { return }
           guard let middleNameText = middleNameTextField.text, !middleNameText.isEmpty else { return }
           guard let firstNameText = firstNameTextField.text, !firstNameText.isEmpty else { return }
           
           
           
           startSigningUp(email: emailText, password: passwordText, gender: genderText, firstName: phoneNumberText, lastName: lastNameText, middleName: middleNameText, phoneNumber: firstNameText)
       }
       
    func startSigningUp(email: String, password: String, gender: String, firstName: String, lastName: String, middleName: String, phoneNumber: String) {
           print("Please call any Sign up api for registration: ", email, password, gender)
       }
    
    @objc func handleTextChange() {
            
            let emailText = emailTextField.text!
            let phoneNumberText = phoneNumberTextField.text!
            let passwordText = passwordTextField.text!
        let genderText = genderTextField.text!
        let lastNameText = lastNameTextField.text!
        let middleNameText = middleNameTextField.text!
        let firstNameText = firstNameTextField.text!
            
        let isFormFilled = !emailText.isEmpty && !phoneNumberText.isEmpty && !passwordText.isEmpty && !genderText.isEmpty && !lastNameText.isEmpty && !middleNameText.isEmpty && !firstNameText.isEmpty
            
            if isFormFilled {
                createAccountButton.backgroundColor = #colorLiteral(red: 0.261880368, green: 0.0002768601116, blue: 0.7620429397, alpha: 1)
                createAccountButton.isEnabled = true
            }else {
                createAccountButton.backgroundColor = UIColor.lightGray
                createAccountButton.isEnabled = false
            }
            
        }
}
