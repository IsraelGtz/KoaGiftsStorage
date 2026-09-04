@testable import KoaGiftsStorage
import Testing

@Test func successful_load_letters() async throws {
    let letters = try KoaGiftsStorage.shared.fetchLetters()
    print(letters)
    #expect(!letters.isEmpty)
}

@Test func successful_load_videoSections() async throws {
    let sections = try KoaGiftsStorage.shared.fetchVideoSections()
    print(sections)
    #expect(sections.collaborations.count >= 1)
}
