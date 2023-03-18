//
//  HomeViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

struct movies{
    
    var movieName: String
    var movieTime: Int
    var movieRating: Double
}

class HomeViewController: UIViewController {
    
    
    @IBOutlet var movieListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

}


