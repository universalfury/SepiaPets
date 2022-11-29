//
//  PetsViewControllerTests.swift
//  SepiaSetsTests
//
//  Created by Vartika Singh on 29/11/22.
//

import XCTest

class PetsViewControllerTests: XCTestCase {

    func test_PetsViewControllerTableConformance_ShouldNotNil() {
        let sut = makeControllerAsSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.petListingTableView.delegate)
        XCTAssertNotNil(sut.petListingTableView.dataSource)
        
    }

    func test_PetsViewControllerTitle_ShouldBeSet() {
        let sut = makeControllerAsSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual("Pet Listing", sut.title)
    }
    
    func test_PetsViewControllerViewModel_ShouldBeSet() {
        let sut = makeControllerAsSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotEqual(sut.petsViewModel.petsData.count, 0)
    }
    
    private func makeControllerAsSUT() -> PetsViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: self.classForCoder))
        let sut = storyboard.instantiateViewController(identifier: "PetsViewController") as! PetsViewController
        return sut
    }
}
