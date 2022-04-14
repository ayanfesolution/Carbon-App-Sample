//
//  ProfileModal.swift
//  CarbonApp
//
//  Created by Decagon on 14/04/2022.
//

import Foundation

// MARK: - UserDetailsModal
struct UserDetailsModal: Codable {
    let id: String
    let firstName: String
    let lastName: String
    let middleName: String
    let email: String
    let password: String
    let gender: String
    let phoneNumber: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstName = "firstName"
        case lastName = "lastName"
        case middleName = "middleName"
        case email = "email"
        case password = "password"
        case gender = "gender"
        case phoneNumber = "phoneNumber"
    }
}

