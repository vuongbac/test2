//
//  NetWordManager.swift
//  App2
//
//  Created by Vương Toàn Bắc on 5/15/20.
//  Copyright © 2020 VTB. All rights reserved.
//

import Foundation
import Alamofire
class NetWordManager: NSObject{
    
    
    let keyApi = "https://5eba40143f971400169923ef.mockapi.io/person?page=1&limit=10"
    
    func listCV(completion: @escaping ([Data]) -> Void) {
        Alamofire.request(keyApi).response { response in
            guard let data = response.data else { return }
            do {
                let decoder = JSONDecoder()
                let getCV  = try decoder.decode([Data].self, from: data)
                completion(getCV)
                print(getCV)
            } catch let error {
                print(error)
                completion(nil!)
            }
        }
    }
    
    
    let keyApi2 = "https://5eba40143f971400169923ef.mockapi.io/person?page=2&limit=10"
    
    func listCV2(completion: @escaping ([Data]) -> Void) {
        Alamofire.request(keyApi).response { response in
            guard let data = response.data else { return }
            do {
                let decoder = JSONDecoder()
                let getCV  = try decoder.decode([Data].self, from: data)
                completion(getCV)
                print(getCV)
            } catch let error {
                print(error)
                completion(nil!)
            }
        }
    }
    
}
