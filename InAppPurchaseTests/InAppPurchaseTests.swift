//
//  InAppPurchaseTests.swift
//  InAppPurchaseTests
//
//  Created by Mac Pro 15 on 2022/11/29.
//

import XCTest
@testable import InAppPurchase //타겟이 다르기 때문에 가져올 수 있음(원래는 접근제어 해제해야 사용할 수 있지만 @testable사용하면 테스트 할때는 따로 접근제어 안해도 괜찮음)

final class InAppPurchaseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
