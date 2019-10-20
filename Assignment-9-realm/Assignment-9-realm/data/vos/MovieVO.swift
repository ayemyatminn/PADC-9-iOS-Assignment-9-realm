//
//  MovieVO.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation
import RealmSwift

class MovieVO: Object{
    @objc dynamic var popularity : Double = 0
    @objc dynamic var vote_count : Int = 0
    @objc dynamic var video : Bool = false
    @objc dynamic var poster_path : String?
    @objc dynamic var id : Int = 0
    @objc dynamic var adult : Bool = false
    @objc dynamic var backdrop_path : String?
    @objc dynamic var original_language : String?
    @objc dynamic var original_title : String?
    @objc dynamic var title : String?
    @objc dynamic var vote_average : Double = 0
    @objc dynamic var overview : String?
    @objc dynamic var release_date : String?
    @objc dynamic var budget : Int = 0
    @objc dynamic var homepage : String?
    @objc dynamic var imdb_id : String?
    @objc dynamic var revenue : Int = 0
    @objc dynamic var runtime : Int = 0
    @objc dynamic var tagline : String?
}
