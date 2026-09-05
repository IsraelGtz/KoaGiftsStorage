//
//  ASMR.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 31.8.2026.
//

import Foundation

public struct ASMR: Codable, Identifiable, Hashable {
    public let id = UUID()
    public let name: String
    public let title: String
    public let audioName: String

    enum CodingKeys: String, CodingKey {
        case name, title, audioName
    }
}
