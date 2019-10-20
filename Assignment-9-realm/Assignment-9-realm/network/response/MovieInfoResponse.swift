//
//  MovieInfoResponse.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation
import RealmSwift

struct MovieInfoResponse : Codable {
    
    let popularity : Double?
    let vote_count : Int?
    let video : Bool?
    let poster_path : String?
    let id : Int?
    let adult : Bool?
    let backdrop_path : String?
    let original_language : String?
    let original_title : String?
    let genre_ids: [Int]?
    let title : String?
    let vote_average : Double?
    let overview : String?
    let release_date : String?
    let budget : Int?
    let homepage : String?
    let imdb_id : String?
    let revenue : Int?
    let runtime : Int?
    let tagline : String?
    
    
    enum CodingKeys:String,CodingKey {
        case popularity
        case vote_count
        case video
        case poster_path
        case id
        case adult
        case backdrop_path
        case original_language
        case original_title
        case genre_ids
        case title
        case vote_average
        case overview
        case release_date
        case budget
        case homepage
        case imdb_id
        case revenue
        case runtime
        case tagline = "tagline"
    }
    
    static func saveMovie(data : MovieInfoResponse, realm : Realm) {
        do{
            try realm.write {
                realm.add(convertToMovieVO(data: data, realm: realm), update: .modified)
            }
        }catch{
            print("\(error.localizedDescription)")
        }
    }
    
    static func convertToMovieVO(data : MovieInfoResponse, realm : Realm) -> MovieVO {
        let movieVO = MovieVO()
        movieVO.popularity = data.popularity ?? 0.0
        movieVO.vote_count = data.vote_count ?? 0
        movieVO.video = data.video ?? false
        movieVO.poster_path = data.poster_path
        movieVO.id = data.id ?? 0
        movieVO.adult = data.adult ?? false
        movieVO.backdrop_path = data.backdrop_path
        movieVO.original_language = data.original_language
        movieVO.original_title = data.original_title
        movieVO.title = data.title
        movieVO.vote_average = data.vote_average ?? 0.0
        movieVO.overview = data.overview
        movieVO.release_date = data.release_date
        movieVO.budget = data.budget ?? 0
        movieVO.homepage = data.homepage
        movieVO.imdb_id = data.imdb_id
        movieVO.revenue = data.revenue ?? 0
        movieVO.runtime = data.runtime ?? 0
        movieVO.tagline = data.tagline
        return movieVO
    }
    
}

