//
//  HomeApiManager.swift
//  BCAppMovie
//
//  Created by Bruno Cardenas on 15/03/21.
//

import Foundation
import RxSwift

class HomeApiManager: BaseApiManager<Movies,Error> {
    
    func getPopularMovies() -> Observable<Movies> {
        httpMethod = .GET
        urlPath = Constants.URL.main+Constants.Endpoints.urlListPopularMovies+Constants.apiKey
        createRequest()
        return requestToService()
    }
}
