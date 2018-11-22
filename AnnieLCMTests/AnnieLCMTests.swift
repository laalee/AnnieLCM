//
//  AnnieLCMTests.swift
//  AnnieLCMTests
//
//  Created by HsinYuLi on 2018/11/22.
//  Copyright © 2018 laalee. All rights reserved.
//

import XCTest
@testable import AnnieLCM

class AnnieLCMTests: XCTestCase {

    var vc: ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDown() {

        super.tearDown()
    }

    func test_checkNumber_isNumber() {

        let text = "10"

        let number = vc.checkNumber(text: text)

        XCTAssertEqual(number, 10)
    }

    func test_checkNumber_notNumber() {

        let text = "abc"

        let number = vc.checkNumber(text: text)

        XCTAssertNil(number)
    }

    func test_getGCD_normal() {

        let num1 = 10
        let num2 = 20

        let gcd = vc.getGCD(num1: num1, num2: num2)

        XCTAssertEqual(gcd, 10)
    }

    func test_getGCD_sameNumber() {

        let num1 = 999
        let num2 = 999

        let gcd = vc.getGCD(num1: num1, num2: num2)

        XCTAssertEqual(gcd, 999)
    }

    func test_getGCD_one() {

        let num1 = 1
        let num2 = 999

        let gcd = vc.getGCD(num1: num1, num2: num2)

        XCTAssertEqual(gcd, 1)
    }

    func test_getGCD_coprime() {

        let num1 = 7
        let num2 = 9

        let gcd = vc.getGCD(num1: num1, num2: num2)

        XCTAssertEqual(gcd, 1)
    }

    func test_getLCM_normal() {

        let num1 = 10
        let num2 = 20

        let lcm = vc.getLCM(num1: num1, num2: num2)

        XCTAssertEqual(lcm, 20)
    }

    func test_getLCM_sameNumber() {

        let num1 = 999
        let num2 = 999

        let lcm = vc.getLCM(num1: num1, num2: num2)

        XCTAssertEqual(lcm, 999)
    }

    func test_getLCM_one() {

        let num1 = 1
        let num2 = 999

        let lcm = vc.getLCM(num1: num1, num2: num2)

        XCTAssertEqual(lcm, 999)
    }

    func test_getLCM_coprime() {

        let num1 = 7
        let num2 = 9

        let lcm = vc.getLCM(num1: num1, num2: num2)

        XCTAssertEqual(lcm, num1 * num2)
    }

}
