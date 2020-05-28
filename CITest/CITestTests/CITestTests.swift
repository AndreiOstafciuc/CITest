//
//  CITestTests.swift
//  CITestTests
//
//  Created by Andrei Ostafciuc on 28/05/2020.
//  Copyright © 2020 Andrei Ostafciuc. All rights reserved.
//

import XCTest
import CITest

class CITestTests: XCTestCase {

    func test_loadFeature_executeCompletion() {
        let sut = TestFeature()
        let exp = expectation(description: "Wait for completion")

        var completionCalled = false
        sut.loadFeature() {
            completionCalled = true
            exp.fulfill()
        }

        wait(for: [exp], timeout: 1.0)
        XCTAssertTrue(completionCalled)
    }
}
