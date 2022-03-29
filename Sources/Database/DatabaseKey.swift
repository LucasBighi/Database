//
//  File.swift
//  
//
//  Created by Lucas Marques Bighi on 29/03/22.
//

import Foundation

public struct DatabaseKey {
    
    public init(_ key: String) {
        self.key = key
    }
    
    let key: String
    
    public static func custom(_ key: String) -> DatabaseKey { DatabaseKey(key) }
}
