//
//  PostTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/20/17.
//

import XCTest
@testable import PlaceholderKit

class PostCodingTests: XCTestCase {

    let json = """
        {
          "userId": 1,
          "id": 1,
          "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
          "body": "quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto"
        }
        """

    let object = Post(
        id: 1,
        userId: 1,
        title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    )

    func testDecodePost() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodePost() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }

}
