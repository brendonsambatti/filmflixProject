//
//  HomeScreenViewModel.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import Foundation
import UIKit

protocol HistoryViewModelDelegate:AnyObject{
    func success()
    func error()
}

class HomeScreenViewModel{
    
    private weak var delegate:HistoryViewModelDelegate?
    
    public func delegate(delegate:HistoryViewModelDelegate?){
        self.delegate = delegate
    }
    
    private let service:MarvelApi = MarvelApi()
    
//    var data:[History] = []
    
    private var data:History?
    
    func appendData(){
        
    }
    
    public var numberOfRows:Int{
        return data?.genres.count ?? 0
    }
    
//    public func cellForRow(indexPath:IndexPath)-> MarvelApi{
//        return data?.productionCompanies[indexPath.row] ?? History()
        
//    }
    
    public var heightForRow:CGFloat{
        150
    }
    public func fetchHistory(){
        self.service.getHistoryAlamofire { success, error in
            if let _success = success{
                self.data = _success
                self.delegate?.success()
            }else{
                self.delegate?.error()
            }
        }
    }
}
