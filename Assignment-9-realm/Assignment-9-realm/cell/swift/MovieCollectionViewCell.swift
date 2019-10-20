//
//  MovieCollectionViewCell.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit
import SDWebImage

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ivMovieImage: UIImageView!
    
    var mData: MovieVO? {
        didSet{
            ivMovieImage.sd_setImage(with: URL(string: "\(API.BASE_IMG_URL)\(mData?.poster_path ?? "")"), completed: nil)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
