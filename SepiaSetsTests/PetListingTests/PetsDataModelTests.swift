//
//  PetsDataModelTests.swift
//  SepiaSetsTests
//
//  Created by Vartika Singh on 29/11/22.
//

import XCTest

class PetsDataModelTests: XCTestCase {

    func tests_defaultInitializers_forModel() {
        let sut = makeDataModelAsSUT()
        
        XCTAssertEqual(sut.contentURL, "")
        XCTAssertEqual(sut.imageURL, "")
        XCTAssertEqual(sut.title, "")
        XCTAssertEqual(sut.dateAdded, "")
    }
    
    
    private func makeDataModelAsSUT() -> PetsDataModel {
        let viewModel = PetsDataModel()
        return viewModel
    }

}
