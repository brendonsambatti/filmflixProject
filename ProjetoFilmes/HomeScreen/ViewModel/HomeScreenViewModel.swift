//
//  HomeScreenViewModel.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import Foundation
import UIKit

protocol HomeScreenViewModelDelegate:AnyObject{
    func success()
    func error()
}

class HomeScreenViewModel{
    
    private let service:HistoryService = HistoryService()
    var data:History?
    
    
    public var countElement:Int{
//        return self.data?.productionCompanies?.count ?? 0
        return self.data?.list?.count ?? 0
    }
    public func loadCurrentData(indexPath:IndexPath)-> HistoryList{
//        return data?.productionCompanies?[indexPath.row] ?? ProductionCompany()
        return data?.list?[indexPath.row] ?? HistoryList()
    }
    
    public var heightForRow:CGFloat{
        150
    }

    
    private weak var delegate:HomeScreenViewModelDelegate?
    
    public func delegate(delegate:HomeScreenViewModelDelegate?){
        self.delegate = delegate
    }
    
    public func fetchHistory(){
        self.service.getHistoryAlamofire { success, error in
            if let _success  = success{
                self.data = success
                self.delegate?.success()
            }else{
                self.delegate?.error()
            }
        }
    }
}
