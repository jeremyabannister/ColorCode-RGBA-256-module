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
    func test_init_red256_green256_blue256_alpha256 () throws {
        
        ///
        func randomizedTest () throws {
            
            ///
            let range = UInt8.min ... UInt8.max
            
            ///
            let (r, g, b, a) =
                (range.randomElement()!, range.randomElement()!, range.randomElement()!, range.randomElement()!)
            
            ///
            try ColorCode_RGBA_256(
                red256: r,
                green256: g,
                blue256: b,
                alpha256: a
            )
                .assert(\.red256, equals: r)
                .assert(\.green256, equals: g)
                .assert(\.blue256, equals: b)
                .assert(\.alpha256, equals: a)
        }
        
        ///
        for _ in (0 ..< 1_000) {
            try randomizedTest()
        }
    }
}

///
extension ColorCode_RGBA_256: Testable { }
