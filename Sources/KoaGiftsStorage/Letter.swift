//
//  Letter.swift
//  KoaGiftsStorage
//
//  Created by Israel Gutiérrez Castillo on 30.8.2026.
//

import Foundation

public struct Letter: Codable, Identifiable, Hashable {
    public let id: UUID
    public let name: String
    public let title: String
    public let body: String
    public let imageName: String?
    public let audioName: String?

    init(name: String, title: String, body: String, imageName: String?, audioName: String?) {
        id = UUID()
        self.name = name
        self.title = title
        self.body = body
        self.imageName = imageName
        self.audioName = audioName
    }
}
