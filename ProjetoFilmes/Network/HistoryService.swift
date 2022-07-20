//
//  HistoryService.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 14/06/22.
//

import Foundation
import Alamofire

protocol GenericService:AnyObject{
    typealias completion <T> = (_ result: T, _ failure:Error?)-> Void
}
enum Error:Swift.Error{
    case fileNotFound(name:String)
    case fileDecodingFailed(name:String, Swift.Error)
    case errorRequest(AFError)
}

protocol HistoryServiceDelegate: GenericService{
    func getHistoryAlamofire(completion: @escaping completion<History?>)
}

var value:Int = 1

class HistoryService:HistoryServiceDelegate{
    func getHistoryAlamofire(completion: @escaping completion<History?>) {
        while (value != 900) {
            value = value + 1
        }
        let url:String = "https://api.themoviedb.org/3/movie/\(value)?api_key=efc14dccffb82992aeddde213a16378a&language=pt-BR"
        AF.request(url, method: .get).responseDecodable(of: History.self){ response in
            debugPrint(response)
            switch response.result{
            case .success(let success):
                print("Sucesso =====>")
                completion(success,nil)
            case .failure(let error):
                print("Error ======>")
                completion(nil,Error.errorRequest(error))
            }
        }
    }
}
