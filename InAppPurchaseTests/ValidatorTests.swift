//
//  ValidatorTests.swift
//  InAppPurchaseTests
//
//  Created by Mac Pro 15 on 2022/11/30.
//

import XCTest
@testable import InAppPurchase

final class ValidatorTests: XCTestCase {

    var sut: Validator!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Validator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    //UI와 비지니스 로직을 분리해서 UI를 변경해도 유닛테스트에 영향을 주지 않음.
    //작성기준: 1)다른 테스트에 영향을 주지 않기 2)항상 같은 테스트 결과 나오기(Repeatable)
    func testValidator_validEmail_returnTrue() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let user = User(email: "hello@hello.com", password: "1234", check: "1234")
        let valid = sut.isValidEmail(email: user.email)
        XCTAssertTrue(valid)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
