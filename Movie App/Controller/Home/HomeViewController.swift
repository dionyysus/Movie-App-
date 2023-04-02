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
        Movie(name: "Star Wars: The Last Jedi", time:"152 minutes" , rating: "7.0 (IMDb)", imageUrl: "2", desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."),
        Movie(name: "Star Wars: The Empire Strikes Back", time: "140 minutes", rating: "6.0 (IMDb)", imageUrl: "4",desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."),
        Movie(name: "Star Wars: Return of the Jedi", time: "120 minutes", rating: "5.3 (IMDb)", imageUrl: "3", desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
    }
}

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = moviesArray[indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as? MovieCollectionViewCell else {
            return UICollectionViewCell() //bunu araştıracağım
        }
        
        cell.movieImageView.image = UIImage(named: movie.imageUrl)
        cell.movieNameLabel.text = movie.name
        cell.movieTimeLabel.text = movie.time
        cell.movieRatingLabel.text = movie.rating
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = moviesArray[indexPath.row]
        
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        

        
        vc.img = UIImage(named: movie.imageUrl)!
        vc.name = movie.name
        vc.time = movie.time
        vc.rating = movie.rating
        vc.desc = movie.desc
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
