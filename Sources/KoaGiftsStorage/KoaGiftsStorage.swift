import Foundation

public final class KoaGiftsStorage: Sendable {
    private let decoder = JSONDecoder()

    public static let shared = KoaGiftsStorage()

    private init() {}

    public func fetchLetters() throws -> [Letter] {
        guard let fileURL = Bundle.module.url(forResource: "Letters", withExtension: "txt") else {
            throw KoaGiftStorageError.notLettersFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let letters = try decoder.decode([Letter].self, from: data)
            return letters
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }

    public func fetchDefinitions() throws -> [KoaDefinition] {
        guard let fileURL = Bundle.module.url(forResource: "Definitions", withExtension: "txt") else {
            throw KoaGiftStorageError.notDefinitionsFile
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
            throw KoaGiftStorageError.notASMRsFile
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let asmrs = try decoder.decode([ASMR].self, from: data)
            return asmrs
        } catch {
            throw KoaGiftStorageError.decodingError(error)
        }
    }
}
