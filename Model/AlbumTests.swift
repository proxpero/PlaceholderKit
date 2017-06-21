import XCTest
@testable import PlaceholderKit

class AlbumCodingTests: XCTestCase {

    let json = """
    {
        "userId": 1,
        "id": 1,
        "title": "quidem molestiae enim"
    }
    """

    let album = Album(userId: 1, id: 1, title: "quidem molestiae enim")

    func testAlbumJsonDecoding() {
        let decoder = JSONDecoder()
        let data = json.data(using: .utf8)!
        let result = try? decoder.decode(Album.self, from: data)
        XCTAssertNotNil(result)
        XCTAssertEqual(album, result!)
    }
    
    func testAlbumJsonEncodeToDecode() {
        let encoder = JSONEncoder()
        let encoded = try! encoder.encode(album)
        let decoder = JSONDecoder()
        let decoded = try! decoder.decode(Album.self, from: encoded)
        XCTAssertEqual(album, decoded)
    }

}

