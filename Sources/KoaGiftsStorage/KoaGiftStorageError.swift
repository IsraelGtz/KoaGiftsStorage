//
//  KoaGiftStorageError.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 30.8.2026.
//

import Foundation

public enum KoaGiftStorageError: Error {
    case notLettersFile
    case notDefinitionsFile
    case notASMRsFile
    case decodingError(Error)
}
