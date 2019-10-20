//
//  HomePresenterImpl.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation
import RealmSwift

class HomePresenterImpl: BasePresenter{
    
    var mView: HomeView? = nil
    
    let realm = try! Realm()
    
    var trendingMoviesList : [MovieVO]?
    
    var nowPlayingMoviesList : [MovieVO]?
    
    var upcomingMoviesList : [MovieVO]?
    
    var topRatedMoviesList : [MovieVO]?
}

extension HomePresenterImpl: HomePresenter{
    func onUIReady() {
        fetchDataFromNetwork()
        
        
    }
    
    func attachView(view: HomeView) {
        mView = view
    }
    
    fileprivate func fetchDataFromNetwork(){
        fetchTrendingMovies()
//        fetchNowPlayingMovies()
//        fetchUpComingMovies()
//        fetchTopRatedMovies()
    }
    
    fileprivate func fetchTrendingMovies(){
        MovieModelImpl.mModel.fetchAllTrendingMovies(success: { (movies) in
            DispatchQueue.main.async {
                movies.forEach({ (movie) in
                    self.trendingMoviesList?.append(MovieInfoResponse.convertToMovieVO(data: movie, realm: self.realm))
                })
                self.fetchNowPlayingMovies()
            }
            
        }) { (error) in
            self.mView?.showErrorMessage(error: error)
        }
    }
    
    fileprivate func fetchNowPlayingMovies(){
        MovieModelImpl.mModel.fetchAllNowPlayingMovies(success: { (movies) in
            DispatchQueue.main.async {
                movies.forEach({ (movie) in
                    self.nowPlayingMoviesList?.append(MovieInfoResponse.convertToMovieVO(data: movie, realm: self.realm))
                })
                self.fetchUpComingMovies()
            }
        }) { (error) in
            self.mView?.showErrorMessage(error: error)
        }
    }
    
    fileprivate func fetchUpComingMovies(){
        MovieModelImpl.mModel.fetchAllUpcomingMovies(success: { (movies) in
            DispatchQueue.main.async {
                movies.forEach({ (movie) in
                    self.upcomingMoviesList?.append(MovieInfoResponse.convertToMovieVO(data: movie, realm: self.realm))
                })
                self.fetchTopRatedMovies()
            }
        }) { (error) in
            self.mView?.showErrorMessage(error: error)
        }
    }
    
    fileprivate func fetchTopRatedMovies(){
        MovieModelImpl.mModel.fetchAllTopRatedMovies(success: { (movies) in
            DispatchQueue.main.async {
                movies.forEach({ (movie) in
                    self.topRatedMoviesList?.append(MovieInfoResponse.convertToMovieVO(data: movie, realm: self.realm))
                })
                self.mView?.showMoviesList()
            }
        }) { (error) in
            self.mView?.showErrorMessage(error: error)
        }
    }
    
}
