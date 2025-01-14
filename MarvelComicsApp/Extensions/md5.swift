//
//  md5.swift
//  MarvelComicsApp
//
//  Created by Jakub Prus on 15/01/2023.
//  Refactored by Jakub Prus on 08/04/2023.
//

import Foundation
import CryptoKit

extension String {
    var MD5: String {
        let computed = Insecure.MD5.hash(data: self.data(using: .utf8) ?? Data())
        return computed.map{ String(format: "%02hhx", $0) }.joined()
    }
}

// For more information about MD5 visit: https://en.wikipedia.org/wiki/MD5
