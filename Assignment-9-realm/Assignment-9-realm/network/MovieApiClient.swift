//
//  MovieApiClient.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

class MovieApiClient: BaseApiClient{
    
    static let mMovieApiClient = MovieApiClient()
    
    override init() {}
}

extension MovieApiClient: MovieApiClientImpl{
    func getAllTrendingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        self.requestApiWithoutHeaders(url: "\(Routes.ROUTE_TRENDING)", method: .get, parameters: [:], success: { (data) in
            let apiResponse = try! JSONDecoder().decode(MovieListResponse.self, from: data)
            success(apiResponse.results)
            
        }) { (error) in
            failure(error)
        }
    }
    
    func getAllNowPlayingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        self.requestApiWithoutHeaders(url: "\(Routes.ROUTE_NOW_PLAYING)", method: .get, parameters: [:], success: { (data) in
            let apiResponse = try! JSONDecoder().decode(MovieListResponse.self, from: data)
            success(apiResponse.results)
            
        }) { (error) in
            failure(error)
        }
    }
    
    func getAllUpComingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        self.requestApiWithoutHeaders(url: "\(Routes.ROUTE_UPCOMING)", method: .get, parameters: [:], success: { (data) in
            let apiResponse = try! JSONDecoder().decode(MovieListResponse.self, from: data)
            success(apiResponse.results)
            
        }) { (error) in
            failure(error)
        }
    }
    
    func getAllTopRatedMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        self.requestApiWithoutHeaders(url: "\(Routes.ROUTE_TOP_RATED)", method: .get, parameters: [:], success: { (data) in
            let apiResponse = try! JSONDecoder().decode(MovieListResponse.self, from: data)
            success(apiResponse.results)
            
        }) { (error) in
            failure(error)
        }
    }
     
}
