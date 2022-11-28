//
//  PetsViewController.swift
//  SepiaSets
//
//  Created by Vartika Singh on 28/11/22.
//

import UIKit
import SafariServices

class PetsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var petListingTableView: UITableView!
    var petsViewModel = PetsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pet Listing"
        petsViewModel.setupDataModel()
        debugPrint(petsViewModel.petsData)
        petListingTableView.delegate = self
        petListingTableView.dataSource = self
        let contentCellNib = UINib(nibName: "PetListingTableViewCell", bundle: nil)
        petListingTableView.register(contentCellNib, forCellReuseIdentifier: "PetListingTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: Table View Setup
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petsViewModel.petsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PetListingTableViewCell? = petListingTableView.dequeueReusableCell(withIdentifier: "PetListingTableViewCell", for: indexPath) as? PetListingTableViewCell
        let currentListItem = petsViewModel.petsData[indexPath.item]
        cell?.setupCell(currentListItem.title ?? "", currentListItem.imageURL ?? "")
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 200
        } else {
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentListItem = petsViewModel.petsData[indexPath.item]
        if let url = URL(string: currentListItem.contentURL ?? "") {
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true, completion: nil)
        }
    }

}
