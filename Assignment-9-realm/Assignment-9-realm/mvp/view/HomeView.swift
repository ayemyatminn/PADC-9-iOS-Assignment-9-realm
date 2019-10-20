//
//  HomeView.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation

protocol HomeView {
    
    func showErrorMessage(error: String)
    
    func showMoviesList()
}
