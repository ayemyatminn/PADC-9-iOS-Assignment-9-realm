//
//  MovieApiClientImpl.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

protocol MovieApiClientImpl {
    
    func getAllTrendingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func getAllNowPlayingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func getAllUpComingMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
    
    func getAllTopRatedMovies(success: @escaping([MovieInfoResponse]) -> Void,failure: @escaping(String) -> Void)
}
