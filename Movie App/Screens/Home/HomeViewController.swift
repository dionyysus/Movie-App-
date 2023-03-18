//
//  HomeViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet private var movieListTableView: UITableView!
    
    let moviesArray: [Movie] =  [
        Movie(name: "Star Wars: The Last Jedi", time:"2" , rating: "3", imageUrl: "1"),
        Movie(name: "Star Wars: The Last Jedi", time: "3", rating: "4", imageUrl: "2"),
        Movie(name: "Star Wars: The Last Jedi", time: "4", rating: "5", imageUrl: "3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieListTableView.dataSource = self
        movieListTableView.delegate = self
    }
}

// MARK: UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movies = moviesArray[indexPath.row]
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        
        cell.movieNameLabel.text = movies.name
        cell.movieImageView.image = UIImage(named: movies.imageUrl)
        cell.movieTimeLabel.text = movies.time
        cell.movieRatingLabel.text = movies.rating
        
        return cell
    }
}

// MARK:UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    
}
