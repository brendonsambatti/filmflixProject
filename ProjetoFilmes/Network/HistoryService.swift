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

class HistoryService:HistoryServiceDelegate{
    func getHistoryAlamofire(completion: @escaping completion<History?>) {
        let url:String = "https://api.themoviedb.org/3/movie/550?api_key=efc14dccffb82992aeddde213a16378a"
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
