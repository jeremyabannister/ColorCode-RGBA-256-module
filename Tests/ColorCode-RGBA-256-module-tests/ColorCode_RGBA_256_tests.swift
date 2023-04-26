//
//  ColorCode_RGBA_256_tests.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
import ColorCode_RGBA_256_module
import Testable_module
import XCTest


///
final class ColorCode_RGBA_256_tests: XCTestCase {
    
    ///
    func test_init_red_green_blue_alpha () throws {
        
        ///
        func randomizedTest () throws {
            
            ///
            let range = UInt8.min ... UInt8.max
            
            ///
            let (r, g, b, a) =
                (range.randomElement()!, range.randomElement()!, range.randomElement()!, range.randomElement()!)
            
            ///
            try ColorCode_RGBA_256(
                red: r,
                green: g,
                blue: b,
                alpha: a
            )
                .assert(\.red, equals: r)
                .assert(\.green, equals: g)
                .assert(\.blue, equals: b)
                .assert(\.alpha, equals: a)
        }
        
        ///
        for _ in (0 ..< 1_000) {
            try randomizedTest()
        }
    }
}

///
extension ColorCode_RGBA_256: Testable { }
