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
//    public let specialGuestAppearances: [SpecialGuestAppearance]
//    public let liveConcerts: [LiveConcert]
//    public let covers: [Cover]

    enum CodingKeys: String, CodingKey {
        case sections
//        case specialGuestAppearances
//        case liveConcerts
//        case covers
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

// public struct SpecialGuestAppearance: Identifiable, Hashable, Codable, Sendable {
//    public let id = UUID()
//    public let title: String
//    public let url: String
//
//    enum CodingKeys: String, CodingKey {
//        case title, url
//    }
// }
//
// public struct LiveConcert: Identifiable, Hashable, Codable, Sendable {
//    public let id = UUID()
//    public let title: String
//    public let url: String
//
//    enum CodingKeys: String, CodingKey {
//        case title, url
//    }
// }
//
// public struct Cover: Identifiable, Hashable, Codable, Sendable {
//    public let id = UUID()
//    public let title: String
//    public let url: String
//
//    enum CodingKeys: String, CodingKey {
//        case title, url
//    }
// }
