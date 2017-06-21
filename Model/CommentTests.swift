//
//  CommentTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/20/17.
//

import XCTest
@testable import PlaceholderKit

class CommentCodingTests: XCTestCase {

    let json = """
        {
          "postId": 1,
          "id": 1,
          "name": "id labore ex et quam laborum",
          "email": "Eliseo@gardner.biz",
          "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\\ntempora quo necessitatibus\\ndolor quam autem quasi\\nreiciendis et nam sapiente accusantium"
        }
        """
    
    let object = Comment(
        id: 1,
        postId: 1,
        name: "id labore ex et quam laborum",
        email: "Eliseo@gardner.biz",
        body: "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
    )

    func testDecodeComment() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodeComment() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }
    
}
