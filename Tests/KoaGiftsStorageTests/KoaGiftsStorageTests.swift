@testable import KoaGiftsStorage
import Testing

@Test func successful_load_audioLetters() async throws {
    let audioLetters = try KoaGiftsStorage.shared.fetchAudioLetters()
    print(audioLetters)
    #expect(!audioLetters.isEmpty)
}

@Test func successful_load_videoSections() async throws {
    let sections = try KoaGiftsStorage.shared.fetchVideoSections()
    print(sections)
    #expect(!sections.isEmpty)
}

@Test func successful_load_physicalLetters() async throws {
    let physicalLetters = try KoaGiftsStorage.shared.fetchPhysicalLetters()
    print(physicalLetters)
    #expect(!physicalLetters.isEmpty)
}
