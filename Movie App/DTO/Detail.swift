//
//  Detail.swift
//  Movie App
//
//  Created by Gizem Coşkun on 2.04.2023.
//

import Foundation

struct Detail {
    //let id: String
    var name: String?
    var time: String?
    var rating: String?
    var imageUrl: String?
    var synopsis: String?
    var description: String?
    
    init(){
        
    }
    
    init(name: String, time: String,rating: String,imageUrl: String,synopsis: String, description: String ) {
        self.name = name
        self.time = time
        self.rating = rating
        self.imageUrl = imageUrl
        self.synopsis = synopsis
        self.description = description
    }
}
