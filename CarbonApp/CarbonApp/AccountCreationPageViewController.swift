//
//  AccountCreationPageViewController.swift
//  CarbonApp
//
//  Created by Decagon on 09/04/2022.
//

import UIKit

class AccountCreationPageViewController: UIViewController {
    
    private let welcomeGreetingsLabel: UILabel = {
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
        firstName.heightAnchor.constraint(equalToConstant: 45).isActive = true
        firstName.layer.cornerRadius = 7
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
        middleName.heightAnchor.constraint(equalToConstant: 45).isActive = true
        middleName.layer.cornerRadius = 7
        return middleName
    }()
    
    let middleNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5

        return stackView
    }()
    
    
    
    private let firstAndMiddleNameStackView : UIStackView = {
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
        lastName.heightAnchor.constraint(equalToConstant: 45).isActive = true
        lastName.layer.cornerRadius = 7
        return lastName
    }()
    
    private let lastNameStackView : UIStackView = {
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
        phoneNumber.heightAnchor.constraint(equalToConstant: 45).isActive = true
        phoneNumber.layer.cornerRadius = 7
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
        gender.heightAnchor.constraint(equalToConstant: 45).isActive = true
        gender.layer.cornerRadius = 7
        return gender
    }()
    
    
    let genderStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        
        return stackView
    }()
    
    
    
    private let phoneNumberAndGenderStackView : UIStackView = {
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
        email.heightAnchor.constraint(equalToConstant: 45).isActive = true
        email.layer.cornerRadius = 7
        
        return email
    }()
    
    
    private let emailStackView : UIStackView = {
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
        password.heightAnchor.constraint(equalToConstant: 45).isActive = true
        password.layer.cornerRadius = 7
        
        return password
    }()
    
    
    private let passwordStackView : UIStackView = {
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
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        button.addTarget(self, action: #selector(buttonActionRegister), for: .touchUpInside)
        
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
    
}

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
