//
//  KoaGiftStorageError.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 30.8.2026.
//

import Foundation

public enum KoaGiftStorageError: Error {
    case noAudioLettersFile
    case noPhysicalLetterNamesFile
    case noDefinitionsFile
    case noASMRsFile
    case noGalleryFile
    case noVideoSectionsFile
    case noCreditsFile
    case decodingError(Error)
}
