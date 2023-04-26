//
//  ColorCode_RGBA_256.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
@_exported import Foundation
@_exported import RandomlyGeneratable_module


///
public struct ColorCode_RGBA_256: Hashable {
    
    ///
    public var red: UInt8
    public var green: UInt8
    public var blue: UInt8
    public var alpha: UInt8
    
    ///
    public init
        (red: UInt8,
         green: UInt8,
         blue: UInt8,
         alpha: UInt8) {
        
        ///
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

///
extension ColorCode_RGBA_256: RandomlyGeneratable {
    
    ///
    public static func generateRandom () -> Self {
        .init(
            red: .generateRandom(),
            green: .generateRandom(),
            blue: .generateRandom(),
            alpha: .generateRandom()
        )
    }
}
