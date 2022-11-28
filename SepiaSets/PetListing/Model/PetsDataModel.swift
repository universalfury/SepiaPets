//
//  PetsDataModel.swift
//  SepiaSets
//
//  Created by Vartika Singh on 28/11/22.
//

import Foundation

struct PetsDataModel {
    var title: String?
    var imageURL: String?
    var contentURL: String?
    var dateAdded: String?
    
    init() {
        title = ""
        imageURL = ""
        contentURL = ""
        dateAdded = ""
    }
    
    init(data: NSDictionary) {
        title = data["title"] as? String
        imageURL = data["image_url"] as? String
        contentURL = data["content_url"] as? String
        dateAdded = data["date_added"] as? String
    }
}
