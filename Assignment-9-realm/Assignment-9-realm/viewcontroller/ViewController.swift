//
//  ViewController.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/5/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var MovieTableView: UITableView!
    
    private let mPresenter: HomePresenterImpl = HomePresenterImpl()
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mPresenter.attachView(view: self)
        self.mPresenter.onUIReady()
        
        MovieTableView.delegate = self
        MovieTableView.dataSource = self
        
        MovieTableView.register(UINib(nibName: String(describing: MovieTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MovieTableViewCell.self))
        
        MovieTableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MovieTableViewCell.self), for: indexPath) as! MovieTableViewCell
        
        switch indexPath.row{
        case 0:
            cell.lblMovieType.text = "Trending Movies"
            cell.mData = mPresenter.trendingMoviesList
        case 1:
            cell.lblMovieType.text = "Now Playing Movies"
            cell.mData = mPresenter.nowPlayingMoviesList
        case 2:
            cell.lblMovieType.text = "UpComing Movies"
            cell.mData = mPresenter.upcomingMoviesList
        case 3:
            cell.lblMovieType.text = "Top Rated Movies"
            cell.mData = mPresenter.topRatedMoviesList
        default:
            cell.lblMovieType.text = "Undefine"
        }
        return cell
    }
}

extension ViewController: HomeView{
    func showErrorMessage(error: String) {
        Dialog.showAlert(viewController: self, title: "Error", message: error)
        
    }
    
    func showMoviesList() {
        self.MovieTableView.reloadData()
    }
    
    
}

