//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit


final class DetailViewController: BaseViewController {
    @IBOutlet private var movieNameLabel: UILabel!
    @IBOutlet private var movieImageView: UIImageView!
    @IBOutlet private var movieRatingLabel: UILabel!
    @IBOutlet private var movieTimeLabel: UILabel!
    @IBOutlet private var movieDescription: UILabel!
    @IBOutlet private var moviePlayImageView: UIImageView!
    @IBOutlet private var movieFavoriteImageView: UIImageView!
    
    var movie: Movie?
    
    var movieId: Int? = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timeStackView.isHidden = true
        navigationController?.navigationBar.topItem?.backButtonTitle = "Back"
        
        movieNameLabel.text = movie?.name
        movieImageView.image = UIImage(named: movie?.imageUrl ?? "")
        movieTimeLabel.text = movie?.time
        movieRatingLabel.text = movie?.rating
        movieDescription.text = movie?.desc
        title = movie?.name
        
        let tapFavorite = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.favoriteTappedImageView))
        let tapPlay = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.playTappedImageView))
        
        movieFavoriteImageView.addGestureRecognizer(tapFavorite)
        moviePlayImageView.addGestureRecognizer(tapPlay)
        movieFavoriteImageView.isUserInteractionEnabled = true
        moviePlayImageView.isUserInteractionEnabled = true
    }

    @objc func favoriteTappedImageView() {
        print("favorite button tapped")
        
        let favoriteMovie = moviesArray.filter{$0.id == movieId}
            
        if MovieManager.shared.setFavoriteMovie(movie: favoriteMovie){
            movieFavoriteImageView.image = UIImage(named: "heart-filled")
        }
        else{
            movieFavoriteImageView.image = UIImage(named: "heart-akin")
        }
    }
    @objc func playTappedImageView() {
        print("play button tapped")
    }
    
    func prepare(movie: Movie) {
        self.movie = movie
    }
    
}


