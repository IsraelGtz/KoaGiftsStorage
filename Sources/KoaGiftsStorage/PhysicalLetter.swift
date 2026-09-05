//
//  PhysicalLetter.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 4.9.2026.
//

import Foundation

public struct PhysicalLetter: Codable, Identifiable, Hashable {
    public let id = UUID()
    public let author: String
    public let fileName: String

    enum CodingKeys: String, CodingKey {
        case author, fileName
    }
}
