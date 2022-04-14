//
//  ViewModel.swift
//  CarbonApp
//
//  Created by Decagon on 14/04/2022.
//

import Foundation

class UserInfoViewModel {
    
//    weak var delegate: DataDelegate?
    var currentDay: UserDetailsModal?
    let apiOne : UserDetailsAPICall = UserDetailsAPICall.sharedInstance
    var userDetails: UserDetailsModal?
    
    func fetchCurrentDayData() {
        apiOne.dataParser { [weak self] result in
            switch result{
            case .success(let results):
                self?.userDetails = results
                print(self!.userDetails!)
//                DispatchQueue.main.async {
//                    self?.delegate?.fetchCurrentDayData(results)
            case .failure(let errors):
                print(errors)
            }
        }
    }
    
}
