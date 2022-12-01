//
//  APIServiceTests.swift
//  InAppPurchaseTests
//
//  Created by Mac Pro 15 on 2022/12/01.
//

import XCTest
@testable import InAppPurchase

final class APIServiceTests: XCTestCase {
    var sut: APIService!

    override func setUpWithError() throws {
        sut = APIService()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testExample() throws {
        print("testExample Start")
        
        sut.number = 100
        
        sut.callRequest { value in
            XCTAssertLessThanOrEqual(value, 45)
            XCTAssertGreaterThanOrEqual(value, 1)
            print("callRequest")
        }
        print("testExample End")
    }
    
    //비동기: expectation, fullfill, wait
    /*
     #. 네트워크 환경
     -. 아이폰 네트워크 응답X, API 서버점검, API지연 같은 경우 동일한 테스트 환경을 유지할 수 없음(효율성/속도 등)
     
     #. 테스트 더블(test double)
     -. 예측 불가능한 상황을 만들지 않기 위해 실제 네트워크 동작이 되는 것처럼 보이게 별개의 객체를 만듦
     -. 테스트 코드랑 상호작용 할 수 있는 가짜 객체 생성(ex. dummy, mock, fake, stub, spy etc)
     */
    func test_APILottoResponse_AsyncCover() throws {
        print("testExample Start")
        
        let promise = expectation(description: "waiting lotto number, completion handler invoked")
        sut.number = 33
        
        sut.callRequest { value in
            XCTAssertLessThanOrEqual(value, 45)
            XCTAssertGreaterThanOrEqual(value, 1)
            print("callRequest")
            promise.fulfill() //expectation으로 정의된 테스트 조건 충족되면 호출
        }
        print("testExample End")
        
        wait(for: [promise], timeout: 5) //5초안에 응답오면 성공, 안오면 실패
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
