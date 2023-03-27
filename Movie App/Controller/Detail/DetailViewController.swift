//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var movieRatingLabel: UILabel!
    @IBOutlet var movieTimeLabel: UILabel!
    @IBOutlet var movieSynopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
    }
    
    @IBAction func playButtonTapped(_ sender: Any) {
        
    }
}
