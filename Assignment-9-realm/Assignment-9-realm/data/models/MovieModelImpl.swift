//
//  MovieModelImpl.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

class MovieModelImpl : BaseModel{
    static let mModel = MovieModelImpl()
    override init() {}
}

extension MovieModelImpl: MovieModel{
    func fetchAllTrendingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        MovieApiClient.mMovieApiClient.getAllTrendingMovies(success: { (response) in
            success(response)
        }) { (error) in
            failure(error)
        }
    }
    
    func fetchAllNowPlayingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        MovieApiClient.mMovieApiClient.getAllNowPlayingMovies(success: { (response) in
            success(response)
        }) { (error) in
            failure(error)
        }
    }
    
    func fetchAllUpcomingMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        MovieApiClient.mMovieApiClient.getAllUpComingMovies(success: { (response) in
            success(response)
        }) { (error) in
            failure(error)
        }
    }
    
    func fetchAllTopRatedMovies(success: @escaping ([MovieInfoResponse]) -> Void, failure: @escaping (String) -> Void) {
        MovieApiClient.mMovieApiClient.getAllTopRatedMovies(success: { (response) in
            success(response)
        }) { (error) in
            failure(error)
        }
    }
    
    
}
