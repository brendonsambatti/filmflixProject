//
//  MarvelAPI.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import Foundation
import CommonCrypto
import Alamofire

protocol GenericService:AnyObject{
    typealias completion <T> = (_ result: T, _ failure:Error?) -> Void
}

enum Error:Swift.Error{
    case fileNotFound(name:String)
    case errorURL(urlString:String)
    case detailError(detail:String)
    case fileDecodingFailed(name:String,Swift.Error?)
    case errorRequest(AFError)
}

protocol HistoryServiceDelegate:GenericService{
    func getHistoryAlamofire(completion: @escaping completion<History?>)
}

class MarvelApi: HistoryServiceDelegate{
    
    
    func getHistoryAlamofire(completion: @escaping completion<History?>) {
        let url:String = "https://api.themoviedb.org/3/movie/550?api_key=efc14dccffb82992aeddde213a16378a"
        AF.request(url,method: .get).responseDecodable(of: History.self){ response in
            debugPrint(response)
            switch response.result{
            case .success(let success):
                print("SUCESSO ====>")
                completion(success,nil)
            case .failure(let error):
                print("ERROR ====>")
                completion(nil,Error.errorRequest(error))
            }
        }
    }
    
}

