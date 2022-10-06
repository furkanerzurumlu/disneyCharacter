//
//  characterNetworking.swift
//  disneyCharacter
//
//  Created by Furkan Erzurumlu on 6.10.2022.
//

import Foundation
import Alamofire

class characterNetworking{
    static let upComingCharacter = "https://api.disneyapi.dev/characters"
    
    func getUpComingCharacter(completion: @escaping (DisneyCharacters?)->()){
        let request = AF.request("https://api.disneyapi.dev/characters")
        request.validate().responseDecodable(of: DisneyCharacters.self) {[weak self] (response) in
            guard let character = response.value else{
                completion(nil)
                print(response.error)
                return
            }
            completion(character)
        }
    }
}
