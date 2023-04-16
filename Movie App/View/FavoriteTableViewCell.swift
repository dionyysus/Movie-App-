//
//  FavoriteTableViewCell.swift
//  Movie App
//
//  Created by Gizem Coşkun on 11.04.2023.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    
    var id = ""
    @IBOutlet var favoriteImageView: UIImageView!
    @IBOutlet var time: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var favoriteHeartImageView: UIImageView!
}
