//
//  Routes.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

class Routes{
    static let ROUTE_TRENDING_GENRES = "\(API.BASE_URL)/movie/popular?api_key=\(API.KEY)"
    static let ROUTE_NOW_PLAYING = "\(API.BASE_URL)/movie/now_playing?api_key=\(API.KEY)"
    static let ROUTE_UPCOMING = "\(API.BASE_URL)/movie/upcoming?api_key=\(API.KEY)"
    static let ROUTE_TOP_RATED = "\(API.BASE_URL)/movie/top_rated?api_key=\(API.KEY)"
    static let RPUTE_MOVIE_SEARCH = "\(API.BASE_URL)/search/movie?api_key=\(API.KEY)"
    
}
