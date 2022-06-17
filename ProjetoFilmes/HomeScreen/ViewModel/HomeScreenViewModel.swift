//
//  HomeScreenViewModel.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import Foundation
import UIKit

class HomeScreenViewModel{
    var adult:Bool?
    var backdropPath:String?

    private let service:HistoryService = HistoryService()
    
    public func fetchHistory(){
        self.service.getHistoryAlamofire { success, error in
            print(success)
//            History.init(adult: self.adult, backdropPath: self.backdropPath, belongsToCollection: <#T##JSONNull?#>, budget: <#T##Int?#>, genres: <#T##[Genre]?#>, homepage: <#T##String?#>, id: <#T##Int?#>, imdbID: <#T##String?#>, originalLanguage: <#T##String?#>, originalTitle: <#T##String?#>, overview: <#T##String?#>, popularity: <#T##Double?#>, posterPath: <#T##String?#>, productionCompanies: <#T##[ProductionCompany]?#>, productionCountries: <#T##[ProductionCountry]?#>, releaseDate: <#T##String?#>, revenue: <#T##Int?#>, runtime: <#T##Int?#>, spokenLanguages: <#T##[SpokenLanguage]?#>, status: <#T##String?#>, tagline: <#T##String?#>, title: <#T##String?#>, video: <#T##Bool?#>, voteAverage: <#T##Double?#>, voteCount: <#T##Int?#>)
        }
    }
    
    
    
    var data = ["", ""]
        
    func appendData(){
        
    }
    
    public var numberOfRows:Int{
        return data.count
    }
    
//    public func cellForRow(indexPath:IndexPath)-> MarvelApi{
//        return data?.productionCompanies[indexPath.row] ?? History()
        
//    }
    
    public var heightForRow:CGFloat{
        150
    }

}
