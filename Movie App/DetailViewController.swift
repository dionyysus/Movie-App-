//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var movieName: UILabel!
    @IBOutlet var movieRating: UILabel!
    @IBOutlet var movieTime: UILabel!
    @IBOutlet var movieSynopsis: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func addToFavoritesButton(_ sender: Any) {
    }
}
