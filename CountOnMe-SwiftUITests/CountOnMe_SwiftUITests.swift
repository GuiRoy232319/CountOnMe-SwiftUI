//
//  CountOnMe_SwiftUITests.swift
//  CountOnMe-SwiftUITests
//
//  Created by guill roy on 04/12/2023.
//

import XCTest

@testable import CountOnMe_SwiftUI

    class CalculatorModelTests: XCTestCase {
      
        let calculatorModel = CalculatorModel()
        
        func testGivenTwoNumber_WhenAddAdditionOperator_ThenResultShouldBeAdditionOfTheTwoNumber() {
            let result = calculatorModel.calculate(expression:["1","+","1"])
            XCTAssertEqual(result, "2")
        }
        
        func testGivenThreeNumber_WhenAddAdditionAnndMultiplicationOperator_ThenResultShouldBeLogicalMathLogic(){
            let result = calculatorModel.calculate(expression: ["15", "+", "2", "*", "8"])
            XCTAssertEqual(result, "31")
        }
        func testGivenTwoNumber_WhenAddSubstractionOperator_ThenResultShouldBeSubstractionOfTheTwoNumber() {
            let result = calculatorModel.calculate(expression:[ "5","-","2"])
            XCTAssertEqual(result, "3")
        }
        
        func testGivenTwoNumber_WhenAddMultiplicationOperator_ThenResultShouldBeMultiplicationOfTheTwoNumber() {
            let result = calculatorModel.calculate(expression: ["2","*","8"])
            XCTAssertEqual(result, "16")
        }
        
        func testGivenTwoNumber_WhenAddDivisionOperator_ThenResultShouldBeDivisionOfTheTwoNumber() {
            let result = calculatorModel.calculate(expression: ["8","/","4"])
            XCTAssertEqual(result, "2")
        }
        
        func testGivenOneNumber_WhenAddingOnOperator_ThenResultShouldBeNil() {
            let result = calculatorModel.calculate(expression: ["2"," + "])
            XCTAssertNil(result)
        }
        
        func testGivenTwoNumber_WhenAddingOnDividerOrMultiplication_ThenResultShouldBeDouble(){
            let result = calculatorModel.calculate(expression: ["5","/","4"])
            XCTAssertEqual(result, "1")
        }
        
        func testGivenFirstNumberAndZero_WhenAddingDivider_ThenResultShouldBeZero() {
            let result = calculatorModel.calculate(expression: ["5","/","0"])
            XCTAssertEqual(result, "0")
        }
        
        func testGivenTwoNumber_WhenAddingInvalideOperator_ThenResultShouldBeError() {
            let result = calculatorModel.calculate(expression: ["5"," /- ","0"])
            XCTAssertEqual(result, "Error")
        }
        func testGivenFiveNumber_whenAddingTwoAdditionOperator_ThenResultShouldBeTrue(){
            let result = calculatorModel.checkStackCount(stack: ["15", "+", "2", "+", "8"])
            XCTAssertTrue(result)
        }
        func testGivenFiveNumber_whenAddingOneAdditionOperatorAndOneMultiplication_ThenResultShouldBeFalse(){
            let result = calculatorModel.checkStackCount(stack: ["15", "+", "2", "*", "8"])
            XCTAssertFalse(result)
        }
        func test() {
            let result = calculatorModel.calculate(expression: ["8","/","0","/"])
            XCTAssertEqual(result, nil)
        }
    }

