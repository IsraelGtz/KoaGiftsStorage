@testable import KoaGiftsStorage
import Testing

@Test func successful_load_letters() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.

    do {
        let letters = try KoaGiftsStorage.shared.fetchLetters()
        print(letters)

        #expect(!letters.isEmpty)
    } catch {
        print(error)
    }
}
