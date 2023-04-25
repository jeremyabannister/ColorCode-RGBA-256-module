//
//  ColorCode_RGBA_256.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
@_exported import Foundation


///
public struct ColorCode_RGBA_256: Hashable {
    
    ///
    public var red256: UInt8
    public var green256: UInt8
    public var blue256: UInt8
    public var alpha256: UInt8
    
    ///
    public init
        (red256: UInt8,
         green256: UInt8,
         blue256: UInt8,
         alpha256: UInt8) {
        
        ///
        self.red256 = red256
        self.green256 = green256
        self.blue256 = blue256
        self.alpha256 = alpha256
    }
}
