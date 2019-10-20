//
//  MovieModel.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

protocol MovieModel {
    
    func fetchAllTrendingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func fetchAllNowPlayingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func fetchAllUpcomingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func fetchAllTopRatedMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
}
