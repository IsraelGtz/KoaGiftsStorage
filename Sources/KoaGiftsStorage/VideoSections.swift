//
//  VideoSections.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 3.9.2026.
//

import Foundation

public struct VideoSections: Identifiable, Hashable, Codable {
    public let id = UUID()
    public let sections: [VideoSection]

    enum CodingKeys: String, CodingKey {
        case sections
    }
}

public struct VideoSection: Identifiable, Hashable, Codable, Sendable {
    public let id = UUID()
    public let title: String
    public let elements: [VideoElement]

    enum CodingKeys: String, CodingKey {
        case title, elements
    }
}

public struct VideoElement: Identifiable, Hashable, Codable, Sendable {
    public let id = UUID()
    public let title: String
    public let url: String

    enum CodingKeys: String, CodingKey {
        case title, url
    }
}
