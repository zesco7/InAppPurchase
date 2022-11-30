//
//  InAppPurchaseTests.swift
//  InAppPurchaseTests
//
//  Created by Mac Pro 15 on 2022/11/29.
//

import XCTest
@testable import InAppPurchase //타겟이 다르기 때문에 가져올 수 있음(원래는 접근제어 해제해야 사용할 수 있지만 @testable사용하면 테스트 할때는 따로 접근제어 안해도 괜찮음)

final class InAppPurchaseTests: XCTestCase {
    
    var sut: LoginViewController! //sut: system under test 테스트를 하고자 하는 클래스를 정의할 때 사용
    
    override func setUpWithError() throws {
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        
        sut.loadViewIfNeeded() //스토리보드, @IBOutlet 작업 시 필요
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    //이메일 유효성 테스트: 함수명 구조(test뷰컨트롤러 이름_테스트메서드 이름-반환값)
    //TDD: Given, When, Then
    //BDD: Arrange, Act, Assert
    func testLoginViewController_validEmail_returnTrue() throws {
        //테스트 객체: Given, Arrange
        sut.emailTextField.text = "hello@hello.com"
        
        //테스트 조건/행동: When, Act
        let valid = sut.isValidEmail()
        
        //테스트 결과: Then, Assert
        XCTAssertTrue(valid) //valid값이 true면 테스트 성공, false면 실패
    }
    
    
    func textLoginViewController_inValidPassword_ReturnFalse() throws {
        sut.passwordTextField.text = "1234"
        let valid = sut.isValidPassword()
        XCTAssertFalse(valid) //valid값이 false라고 테스트 실패는 아님
    }
    
    func textLoginViewController_emailTextField_ReturnNil() throws {
        sut.emailTextField = nil
        let value = sut.emailTextField
        XCTAssertNil(value)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
