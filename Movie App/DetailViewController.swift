//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    @IBOutlet private var movieImage: UIImageView!
    @IBOutlet private var movieName: UILabel!
    @IBOutlet private var movieRating: UILabel!
    @IBOutlet private var movieTime: UILabel!
    @IBOutlet private var movieSynopsis: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func favoriteButtonTapped() {
    }
}
