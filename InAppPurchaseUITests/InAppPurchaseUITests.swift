//
//  InAppPurchaseUITests.swift
//  InAppPurchaseUITests
//
//  Created by Mac Pro 15 on 2022/11/29.
//

import XCTest
@testable import InAppPurchase

final class InAppPurchaseUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false //테스트 중간에 실패 발생했을때 나머지 코드 계속 진행할지?

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.textFields["emailTextField"].tap() //identifier 사용하여 테스트 코드 작성
        app.textFields["emailTextField"].typeText("hello 안녕")
        
        app.staticTexts["로그인하기"].tap() //텍스트값 사용하여 테스트 코드 작성(버튼타이틀, 레이블 등)
    
        XCTAssertEqual(5, 9) //숫자비교 테스트
        let label = app.staticTexts.element(matching: .any, identifier: "descriptionLabel").label
        XCTAssertEqual(label, "로그인 버튼을 눌렀습니다.")
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
            }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
