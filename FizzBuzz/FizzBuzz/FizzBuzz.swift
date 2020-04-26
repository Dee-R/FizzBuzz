//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Eddy R on 4/26/20.
//  Copyright © 2020 EddyR. All rights reserved.
//

import Foundation

class FizzBuzz {
	private func generateFizzBuzz(_ v:Int) -> String {
		if v == 0 {
			return ""
		}
		if v % 15 == 0 {
			return "FizzBuzz"
		}
		if v % 3 == 0 {
			return "Fizz"
		}
		if v % 5 == 0 {
			return "Buzz"
		}
		
		return "\(v)"
	}
	func generateFizzBuzzR(min: Int, max: Int) -> String {
		var stringToPrint: String = ""
		
		if max < min {
			stringToPrint = "nil"
			return stringToPrint
		} else {
			var zeroMet = false
			for v in min...max {
				var tempMessage:String = ""
				zeroMet = v == 0 ? true : false
				if zeroMet {
					stringToPrint.append("0"); tempMessage = "0"
					zeroMet = true
//					continuer
				}else if v % 15 == 0 {
					stringToPrint.append("FizzBuzz"); tempMessage = "FizzBuzz"
					//return "FizzBuzz"
				} else if v % 5 == 0 {
					stringToPrint.append("Buzz");tempMessage = "Buzz"
					//return "Buzz"
				} else if v % 3 == 0 {
					stringToPrint.append("Fizz");tempMessage = "Fizz"
					//return "Fizz"
				} else {
					stringToPrint.append(String(v));tempMessage = String(v)
				}
				print("number : \(v) =>  value : \(tempMessage)")
			}
			return stringToPrint
		}
	}
}
