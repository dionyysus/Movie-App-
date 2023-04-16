//
//  BaseViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 12.04.2023.
//

import UIKit

class MovieManager {
    static let shared = MovieManager()
    private var favoriteMoviesArray: [Movie] = []
    private init() {}
    
    func setFavoriteMovie(movie: [Movie]) -> Bool {

        for item in movie {
            if !favoriteMoviesArray.contains(where: {$0.id == item.id}){
                favoriteMoviesArray.append(contentsOf: movie)
            } else {
                if let index = favoriteMoviesArray.firstIndex(where: {$0.id == item.id}) {
                    favoriteMoviesArray.remove(at: index)
                }
                return false
            }
        }
        return true
    }
    
    func getFavoriteMovie() -> [Movie] {
        return favoriteMoviesArray
    }
}

class BaseViewController: UIViewController {
    let moviesArray: [Movie] =  [
        Movie(id: 0, name: "Star Wars: The Last Jedi", time:"152 minutes" , rating: "7.0 (IMDb)", imageUrl: "2", desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical auraRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical auraRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical auraRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."),
        Movie(id: 1, name: "Star Wars: The Empire Strikes Back", time: "140 minutes", rating: "6.0 (IMDb)", imageUrl: "4",desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."),
        Movie(id: 2 , name: "Star Wars: Return of the Jedi", time: "120 minutes", rating: "5.3 (IMDb)", imageUrl: "3", desc: "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
