//
//  InitialViewControllerTests.swift
//  SepiaSetsTests
//
//  Created by Vartika Singh on 29/11/22.
//

import XCTest

class InitialViewControllerTests: XCTestCase {
    
    func test_shouldAppBeAccessible_workingHours() {
        let sut = makeControllerAsSUT()
        
        sut.loadViewIfNeeded()
        if let testingDate = Calendar.current.date(bySettingHour: 9, minute: 0, second: 0, of: Date.now) {
            let accessValue = sut.shouldAppBeAccessible(testingDate)
            
            XCTAssertEqual(accessValue, true)
        }
    }
    
    func test_AppNotBeAccessible_outofworkingHours() {
        let sut = makeControllerAsSUT()
        
        sut.loadViewIfNeeded()
        if let testingDate = Calendar.current.date(bySettingHour: 22, minute: 0, second: 0, of: Date.now) {
            let accessValue = sut.shouldAppBeAccessible(testingDate)
            
            XCTAssertEqual(accessValue, false)
        }
    }

    private func makeControllerAsSUT() -> InitialViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: self.classForCoder))
        let sut = storyboard.instantiateViewController(identifier: "InitialViewController") as! InitialViewController
        return sut
    }

}
