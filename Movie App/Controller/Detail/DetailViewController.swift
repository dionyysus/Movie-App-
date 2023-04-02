//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    
    @IBOutlet private var movieNameLabel: UILabel!
    @IBOutlet private var movieImageView: UIImageView!
    @IBOutlet private var movieTimeLabel: UILabel!
    @IBOutlet private var movieRatingLabel: UILabel!
    @IBOutlet private var movieDescription: UITextView!

    var img: UIImage? = UIImage()
    var name: String? = ""
    var time: String? = ""
    var rating: String? = ""
    var synopsis: String? = ""
    var desc: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timeStackView.isHidden = true
        self.title = "Star Wars: The Last Jedi"
        self.navigationController?.navigationBar.topItem?.backButtonTitle = "Back"
        
        movieNameLabel.text = name
        movieImageView.image = img
        movieTimeLabel.text = time
        movieRatingLabel.text = rating
        movieDescription.text = desc
        
    }
    
    @IBAction func favoriteButtonTapped() {
        print("favorite button tapped")
    }

    @IBAction private func playButtonTapped() {
        print("play button tapped")
    }
}
