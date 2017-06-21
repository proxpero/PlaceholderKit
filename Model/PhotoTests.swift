//
//  PhotoTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/20/17.
//

import XCTest
@testable import PlaceholderKit

class PhotoCodingTests: XCTestCase {

    let json = """
        {
        "albumId": 1,
        "id": 1,
        "title": "accusamus beatae ad facilis cum similique qui sunt",
        "url": "http://placehold.it/600/92c952",
        "thumbnailUrl": "http://placehold.it/150/92c952"
        }
    """

    let object = Photo(
        id: 1,
        albumId: 1,
        title: "accusamus beatae ad facilis cum similique qui sunt",
        url: "http://placehold.it/600/92c952",
        thumbnailUrl: "http://placehold.it/150/92c952"
    )

    func testDecodePhoto() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodePhoto() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }

}
