//
//  HomeViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit


class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var movieListTableView: UITableView!
    
    struct Movies{
        
        let movieName: String
        let movieTime: String
        let movieRating: String
        let imageName: String
    }
    
    let moviesArray: [Movies] =  [
    
        Movies(movieName: "Star Wars: The Last Jedi", movieTime:"2" , movieRating: "3", imageName: "1"),
        Movies(movieName: "Star Wars: The Last Jedi", movieTime: "3", movieRating: "4", imageName: "2"),
        Movies(movieName: "Star Wars: The Last Jedi", movieTime: "4", movieRating: "5", imageName: "3")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieListTableView.dataSource = self
        movieListTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movies = moviesArray[indexPath.row]
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesTableViewCell
        
        cell.movieNameLabel.text = movies.movieName
        cell.movieImageView.image = UIImage(named: movies.imageName)
        cell.movieTimeLabel.text = movies.movieTime
        cell.movieRatingLabel.text = movies.movieRating
        
        return cell
    }
    

       
}



