//
//  AudioLetter.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 30.8.2026.
//

import Foundation

public struct AudioLetter: Codable, Identifiable, Hashable {
    public let id: UUID = .init()
    public let name: String
    public let title: String
    public let body: String
    public let imageName: String?
    public let audioName: String?

    enum CodingKeys: String, CodingKey {
        case name, title, body, imageName, audioName
    }
}
