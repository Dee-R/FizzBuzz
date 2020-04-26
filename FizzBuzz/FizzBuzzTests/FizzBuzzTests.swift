//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Eddy R on 4/26/20.
//  Copyright © 2020 EddyR. All rights reserved.
//
/* ****************** FizzBuzz
print "Fizz" for multiple of 3
print "Buzz" for multiple of 5
print "FizzBuzz" for multiple of 15
print number that not follow the rules above.
must to work with the minus number
Take a range of number
***************** */

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
	
	var fizzBuzz:FizzBuzz!
//	var fizzBuzz: fizzBuzz!
	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
//		fizzBuzz = fizzBuzz()
		fizzBuzz = FizzBuzz()
	}
	
	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		fizzBuzz = nil
	}
	
	func testFizzBuzz(){
		// case by case
		// Arrange init
		let ex1 = "1"
		let ex2 = "2"
		let ex3 = "Fizz"
		let ex4 = "4"
		let ex5 = "Buzz"
		let ex6 = "Fizz"
		let ex7 = "FizzBuzz"
		let ex8 = "Buzz"
		let ex9 = "12Fizz4BuzzFizz78FizzBuzz11Fizz1314FizzBuzz"
		let ex10 = "012Fizz4BuzzFizz78FizzBuzz11Fizz1314FizzBuzz"
		let ex11 = ""
		let ex12 = "-1012Fizz4BuzzFizz78FizzBuzz11Fizz1314FizzBuzz"
		let ex13 = "Fizz-2-101"
		let ex14:String = "nil"
		
		// Act : execute the function
		let ac1:String = fizzBuzz.generateFizzBuzz(1)
		let ac2:String = fizzBuzz.generateFizzBuzz(2)
		let ac3:String = fizzBuzz.generateFizzBuzz(3)
		let ac4:String = fizzBuzz.generateFizzBuzz(4)
		let ac5:String = fizzBuzz.generateFizzBuzz(5)
		let ac6:String = fizzBuzz.generateFizzBuzz(6)
		let ac7:String = fizzBuzz.generateFizzBuzz(15)
		let ac8:String = fizzBuzz.generateFizzBuzz(10)
		let ac9:String = fizzBuzz.generateFizzBuzzR(min:1, max: 15)
		let ac10:String = fizzBuzz.generateFizzBuzzR(min:0, max: 15)
		let ac11:String = fizzBuzz.generateFizzBuzz(0)
		let ac12:String = fizzBuzz.generateFizzBuzzR(min:-1, max: 15)
		let ac13:String = fizzBuzz.generateFizzBuzzR(min:-3, max: 1)
		let ac14:String = fizzBuzz.generateFizzBuzzR(min:5, max: 4)
		
		// Assert  actual † expected
		XCTAssertEqual(ac1, ex1)
		XCTAssertEqual(ac2, ex2)
		XCTAssertEqual(ac3, ex3)
		XCTAssertEqual(ac4, ex4)
		XCTAssertEqual(ac5, ex5)
		XCTAssertEqual(ac6, ex6)
		XCTAssertEqual(ac7, ex7)
		XCTAssertEqual(ac8, ex8)
		XCTAssertEqual(ac9, ex9)
		XCTAssertEqual(ac10, ex10)
		XCTAssertEqual(ac11, ex11) // 0 == ""
		XCTAssertEqual(ac12, ex12) // 0 == ""
		XCTAssertEqual(ac13, ex13) // 0 == ""
		XCTAssertEqual(ac14, ex14) // 0 == ""
	}
	

}
