import Foundation

public final class KoaGiftsStorage: Sendable {
    private let decoder = JSONDecoder()

    public static let shared = KoaGiftsStorage()

    private init() {}

    public func fetchAudioLetters() throws -> [AudioLetter] {
        guard let fileURL = Bundle.module.url(forResource: "AudioLetters", withExtension: "txt") else {
            throw KoaGiftStorageError.noAudioLettersFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let letters = try decoder.decode([AudioLetter].self, from: data)
            return letters
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }

    public func fetchPhysicalLetters() throws -> [PhysicalLetter] {
        guard let fileURL = Bundle.module.url(forResource: "PhysicalLetterNames", withExtension: "txt") else {
            throw KoaGiftStorageError.noPhysicalLetterNamesFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let letters = try decoder.decode([PhysicalLetter].self, from: data)
            return letters
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }

    public func fetchDefinitions() throws -> [KoaDefinition] {
        guard let fileURL = Bundle.module.url(forResource: "Definitions", withExtension: "txt") else {
            throw KoaGiftStorageError.noDefinitionsFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let definitions = try decoder.decode([KoaDefinition].self, from: data)
            return definitions
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }

    public func fetchASMRs() throws -> [ASMR] {
        guard let fileURL = Bundle.module.url(forResource: "ASMRs", withExtension: "txt") else {
            throw KoaGiftStorageError.noASMRsFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let asmrs = try decoder.decode([ASMR].self, from: data)
            return asmrs
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }

    public func fetchVideoSections() throws -> [VideoSection] {
        guard let fileURL = Bundle.module.url(forResource: "VideoSections", withExtension: "txt") else {
            throw KoaGiftStorageError.noVideoSectionsFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let sections = try decoder.decode(VideoSections.self, from: data).sections
            return sections
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }
}
