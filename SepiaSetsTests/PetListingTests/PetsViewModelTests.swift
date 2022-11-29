//
//  PetsViewModelTests.swift
//  SepiaSetsTests
//
//  Created by Vartika Singh on 29/11/22.
//

import XCTest

class PetsViewModelTests: XCTestCase {

    func test_DataModelShouldBe_EmptyWhenDataIsNotSetUp() {
        let sut = makeViewModelAsSUT()
        
        let dataCount = sut.petsData.count
        
        XCTAssertEqual(0, dataCount)
    }
    
    func test_DataModelShouldBe_NotEmptyWhenDataIsSetUp() {
        let sut = makeViewModelAsSUT()
        
        sut.setupDataModel()
        let dataCount = sut.petsData.count
        
        XCTAssertNotEqual(0, dataCount)
    }
    
    private func makeViewModelAsSUT() -> PetsViewModel {
        let viewModel = PetsViewModel()
        return viewModel
    }

}
