//
//  FavoritesViewController.swift
//  Movie App
//
//  Created by Gizem Coşkun on 18.03.2023.
//

import UIKit

class FavoritesViewController: BaseViewController {
    @IBOutlet var FavoritesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FavoritesTableView.dataSource = self
        FavoritesTableView.delegate = self
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        FavoritesTableView.reloadData()
    }
}

extension FavoritesViewController: UITableViewDataSource,UICollectionViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieManager.shared.getFavoriteMovie().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let favorites = MovieManager.shared.getFavoriteMovie()[indexPath.row]
        let cell = FavoritesTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavoriteTableViewCell
        cell.name.text = favorites.name
        cell.favoriteImageView.image = UIImage(named: favorites.imageUrl)
        //cell.rating.text = favorites.rating
        cell.time.text = favorites.time
        
        return cell
    }
}
extension FavoritesViewController: UITableViewDelegate {
    
}
