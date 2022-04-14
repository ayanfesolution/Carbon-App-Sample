//
//  ProfilePageViewController.swift
//  CarbonApp
//
//  Created by Decagon on 11/04/2022.
//

import UIKit

class ProfilePageViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.isScrollEnabled = true
        scroll.showsVerticalScrollIndicator = true
        return scroll
    }()
    
    private let contentView : UIView = {
        let content = UIView()
        content.translatesAutoresizingMaskIntoConstraints = false
        return content
    }()
    
    private let headerView : UIView = {
       let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = #colorLiteral(red: 0.8078431373, green: 0.768627451, blue: 0.9568627451, alpha: 1)
        headerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        return headerView
    }()
        

    //MARK: First Name
    
    let firstNameLabel: UILabel = {
        let firstName = UILabel()
        firstName.text = "First name"
        firstName.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return firstName
    }()
    
    let firstNameTextField: UITextField = {
        let firstName = UITextField()
        firstName.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        firstName.heightAnchor.constraint(equalToConstant: 60).isActive = true
        firstName.layer.cornerRadius = 7
        
        return firstName
    }()
    
    private let firstNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    //MARK: Middle Name
    
    let middleNameLabel: UILabel = {
        let middleName = UILabel()
        middleName.text = "Middle name"
        middleName.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return middleName
    }()
    
    let middleNameTextField: UITextField = {
        let middleName = UITextField()
        middleName.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        middleName.heightAnchor.constraint(equalToConstant: 60).isActive = true
        middleName.layer.cornerRadius = 7
        
        return middleName
    }()
    
    private let middleNameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: Surname Stack View
    let surnameLabel: UILabel = {
        let surname = UILabel()
        surname.text = "Surname"
        surname.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return surname
    }()
    
    let surnameTextField: UITextField = {
        let surname = UITextField()
        surname.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        surname.heightAnchor.constraint(equalToConstant: 60).isActive = true
        surname.layer.cornerRadius = 7
        
        return surname
    }()
    private let surnameStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: Email Stack View
    
    let emailLabel: UILabel = {
        let email = UILabel()
        email.text = "Email Address"
        email.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return email
    }()
    
    let emailTextField: UITextField = {
        let email = UITextField()
        email.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        email.heightAnchor.constraint(equalToConstant: 60).isActive = true
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
    
    //MARK: Gender
    
    let genderLabel: UILabel = {
        let gender = UILabel()
        gender.text = "Gender"
        gender.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return gender
    }()
    
    let genderTextField: UITextField = {
        let gender = UITextField()
        gender.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        gender.heightAnchor.constraint(equalToConstant: 60).isActive = true
        gender.layer.cornerRadius = 7
        return gender
    }()
    
    
    private let genderStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        
        return stackView
    }()
    
    //MARK: Phone Numbers
    
    let phoneNumberLabel: UILabel = {
        let phoneNumber = UILabel()
        phoneNumber.text = "Phone Number"
        phoneNumber.textColor = #colorLiteral(red: 0.3725490196, green: 0.4156862745, blue: 0.5411764706, alpha: 1)
        return phoneNumber
    }()
    
    let phoneNumberTextField: UITextField = {
        let phoneNumber = UITextField()
        phoneNumber.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9647058824, alpha: 1)
        phoneNumber.heightAnchor.constraint(equalToConstant: 60).isActive = true
        phoneNumber.layer.cornerRadius = 7
        return phoneNumber
    }()
    
    private let phoneNumberStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5

        return stackView
        
    }()
    
    
    let saveButton: UIButton = {
        let btu = UIButton(type: .system)
        
        btu.setTitle("Set up new account", for: .normal)
        btu.titleLabel?.font = .boldSystemFont(ofSize: 19)
        btu.titleLabel?.textAlignment = .left
        btu.setTitleColor( #colorLiteral(red: 0.2235294118, green: 0.1019607843, blue: 0.5137254902, alpha: 1), for: .normal)
        btu.translatesAutoresizingMaskIntoConstraints = false
//        btu.addAction(, for: <#T##UIControl.Event#>)
        return btu
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViewsLayout()
    }
    
    func setupViewsLayout() {
        view.addSubview(headerView)
        view.addSubview(scrollView)
        view.sendSubviewToBack(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height * 2)
        
//        scrollView.addSubview(contentView)
        
        firstNameStackView.addArrangedSubview(firstNameLabel)
        firstNameStackView.addArrangedSubview(firstNameTextField)
        scrollView.addSubview(firstNameStackView)
        middleNameStackView.addArrangedSubview(middleNameLabel)
        middleNameStackView.addArrangedSubview(middleNameTextField)
        scrollView.addSubview(middleNameStackView)
        surnameStackView.addArrangedSubview(surnameLabel)
        surnameStackView.addArrangedSubview(surnameTextField)
        scrollView.addSubview(surnameStackView)
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextField)
        scrollView.addSubview(emailStackView)
        genderStackView.addArrangedSubview(genderLabel)
        genderStackView.addArrangedSubview(genderTextField)
        scrollView.addSubview(genderStackView)
        phoneNumberStackView.addArrangedSubview(phoneNumberLabel)
        phoneNumberStackView.addArrangedSubview(phoneNumberTextField)
        scrollView.addSubview(phoneNumberStackView)
        
        NSLayoutConstraint.activate([
        
            //first stack view constraints
            scrollView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            headerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            
            firstNameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            firstNameStackView.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 20),
            firstNameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            middleNameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            middleNameStackView.topAnchor.constraint(equalTo: firstNameStackView.bottomAnchor, constant: 20),
            middleNameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            surnameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            surnameStackView.topAnchor.constraint(equalTo: middleNameStackView.bottomAnchor, constant: 20),
            surnameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            emailStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailStackView.topAnchor.constraint(equalTo: surnameStackView.bottomAnchor, constant: 20),
            emailStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            
            phoneNumberStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            phoneNumberStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 20),
            phoneNumberStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),

            genderStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            genderStackView.topAnchor.constraint(equalTo: phoneNumberStackView.bottomAnchor, constant: 20),
            genderStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25)
            
        ])
        
    }

    
}
