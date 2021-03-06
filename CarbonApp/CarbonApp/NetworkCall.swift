//
//  Model.swift
//  CarbonApp
//
//  Created by Decagon on 14/04/2022.
//

import Foundation
import UIKit

enum UserError: Error {
    case dataNotAvailable
    case noNetWorkAccess
    case inValidURL
    case cannotProcessData
    case invalidResponse
}


struct UserDetailsAPICall {
    // Shared Instance
    static let sharedInstance = UserDetailsAPICall()
    
    let userInfo = SignInPageViewController()
    
    func dataParser(completion: @escaping (Result<UserDetailsModal, UserError>) -> Void) {
        let session = URLSession.shared
        let urlString = "https://6120b93b24d11c001762ed5f.mockapi.io/api/v1/user/{id}"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.inValidURL))
            return
        }
        
        let task = session.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(.failure(.cannotProcessData))
                return
            }
            guard response is HTTPURLResponse else{
                completion(.failure(.invalidResponse))
                return
            }
            guard let data = data else {
                completion(.failure(.dataNotAvailable))
                return
            }
            let decoder = JSONDecoder()
            do {
                let currentDay = try decoder.decode(UserDetailsModal.self, from: data)
                completion(.success(currentDay))
            } catch {
//                userInfo.Emaill.text = ""
//                self.passwordTextField.text = ""
//
//                let alertView = UIAlertController(title: "Login failed",
//                                                  message: "Wrong username or password." as String, preferredStyle:.alert)
//                let okAction = UIAlertAction(title: "Try Again!", style: .default, handler: nil)
//                alertView.addAction(okAction)
//                self.present(alertView, animated: true, completion: nil)
                return
            }
        }
        task.resume()
    }
    
    private init() {}
}

/*

let bodyStr = "username=username&password=password&grant_type=password"
     
        let myURL = NSURL(string: "http://192.168.1.2/rest"
        let request = NSMutableURLRequest(url: myURL as URL)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "content-type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = bodyStr.data(using: String.Encoding.utf8)!
     
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            (data, response, error) -> Void in
            if let unwrappedData = data {
             
                do {
                    let tokenDictionary:NSDictionary = try JSONSerialization.jsonObject(with: unwrappedData, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                 
                    let token = tokenDictionary["access_token"] as? String
                }
                catch {
                    self.emailTextField.text = ""
                    self.passwordTextField.text = ""
                 
                    let alertView = UIAlertController(title: "Login failed",
                                                      message: "Wrong username or password." as String, preferredStyle:.alert)
                    let okAction = UIAlertAction(title: "Try Again!", style: .default, handler: nil)
                    alertView.addAction(okAction)
                    self.present(alertView, animated: true, completion: nil)
                    return
                }
            }
        }
        task.resume()

*/
