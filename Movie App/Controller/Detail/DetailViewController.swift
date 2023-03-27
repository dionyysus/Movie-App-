//
//  DetailViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet private var movieImageView: UIImageView!
    @IBOutlet private var movieNameLabel: UILabel!
    @IBOutlet private var movieRatingLabel: UILabel!
    @IBOutlet private var movieTimeLabel: UILabel!
    @IBOutlet private var movieSynopsisLabel: UILabel!
    @IBOutlet private var timeStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timeStackView.isHidden = true
    }
    //sendersiz
    @IBAction private func  favoriteButtonTapped(_ sender: Any) {
    }
    
    @IBAction private func playButtonTapped(_ sender: Any) {
        
    }
}
