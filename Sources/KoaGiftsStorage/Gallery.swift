//
//  Gallery.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 7.9.2026.
//

import Foundation

public struct Gallery: Identifiable, Hashable, Codable {
    public let id = UUID()
    public let sections: [GallerySection]

    enum CodingKeys: String, CodingKey {
        case sections
    }
}

public struct GallerySection: Identifiable, Hashable, Codable{
    public let id = UUID()
    public let title: String
    public let names: [String]

    enum CodingKeys: String, CodingKey {
        case title, names
    }
}
