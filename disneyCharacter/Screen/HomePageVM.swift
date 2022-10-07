//
//  HomePageVM.swift
//  disneyCharacter
//
//  Created by Furkan Erzurumlu on 6.10.2022.
//

import Foundation

protocol HomePageVMProtocol: AnyObject {
    
}

protocol HomePageVMDelegate: HomePageVMProtocol{
    var delegate: HomePageVMDelegateOutputs? {get set}
    var data: [Datum] {get set}
    var nextPage: String {get set}
    func getUpcomingData()
}

protocol HomePageVMDelegateOutputs: AnyObject{
    func reloadCollectionView()
}


class HomePageVM: HomePageVMDelegate{
    var nextPage: String = ""
    var delegate: HomePageVMDelegateOutputs?
    var data: [Datum] = []
    var network: characterNetworking = characterNetworking()
    
    
    func getUpcomingData() {
        network.getUpComingCharacter{[weak self] (response) in
            if let response = response{
                self?.data = response.data
                self?.nextPage = response.nextPage
                self?.delegate?.reloadCollectionView()
            }
                
        }
    }
    
    
}
