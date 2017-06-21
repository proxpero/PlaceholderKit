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

    let object = Album(userId: 1, id: 1, title: "quidem molestiae enim")

    func testDecodeAlbum() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodeAlbum() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }
}

