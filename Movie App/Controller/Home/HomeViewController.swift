//
//  HomeViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class HomeViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet private var movieCollectionView: UICollectionView!
    
    let moviesArray: [Movie] =  [
        Movie(name: "Star Wars: The Last Jedi", time:"152 minutes" , rating: "7.0 (IMDb)", imageUrl: "2"),
        Movie(name: "Star Wars: The Last Jedi", time: "152 minutes", rating: "7.0 (IMDb)", imageUrl: "4"),
        Movie(name: "Star Wars: The Last Jedi", time: "152 minutes", rating: "7.0 (IMDb)", imageUrl: "3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
    }
}

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = moviesArray[indexPath.row]
 
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as? MovieCollectionViewCell else {
            return .init()
        }
        
        cell.movieImageView.image = UIImage(named: movie.imageUrl)
        cell.movieNameLabel.text = movie.name
        cell.movieTimeLabel.text = movie.time
        cell.movieRatingLabel.text = movie.rating
        
        return cell
    }
}



//extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return moviesArray.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let movies = moviesArray[indexPath.row]
//        let cell = movieCellCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCell
//
//        cell.movieNameLabel.text = movies.name
//        cell.movieImageView.image = UIImage(named: movies.imageUrl)
//        cell.movieTimeLabel.text = movies.time
//        cell.movieRatingLabel.text = movies.rating
//
//        return cell
//    }
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let gridLayout = collectionViewLayout as! UICollectionViewFlowLayout
//        let widthPerItem = collectionView.frame.width / 3 - gridLayout.minimumInteritemSpacing
//        return CGSize(width:widthPerItem, height:300)
//    }
//}



 //MARK: UITableViewDataSource
//extension HomeViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        moviesArray.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let movies = moviesArray[indexPath.row]
//        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
//        
//        cell.movieNameLabel.text = movies.name
//        cell.movieImageView.image = UIImage(named: movies.imageUrl)
//        cell.movieTimeLabel.text = movies.time
//        cell.movieRatingLabel.text = movies.rating
//        
//        return cell
//    }
//}
//
// MARK:UITableViewDelegate
//extension HomeViewController: UITableViewDelegate {
//    
//}
