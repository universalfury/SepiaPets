//
//  PetsViewModel.swift
//  SepiaSets
//
//  Created by Vartika Singh on 28/11/22.
//

import Foundation

class PetsViewModel {
    var petsData: [PetsDataModel] = []
    
    // This function is used to set up the data model from the json provided 
    func setupDataModel() {
        if let path = Bundle.main.path(forResource: "pets_list", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? NSDictionary, let data = jsonResult.object(forKey: "pets") as? NSArray {
                    // to fetch data and save it to the model
                    data.forEach { dict in
                        let model = PetsDataModel(data: dict as! NSDictionary)
                        petsData.append(model)
                    }
                }
            } catch {
                // handle error
            }
        }
    }
}
