//
//  TodoTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/20/17.
//

import XCTest
@testable import PlaceholderKit

class TodoCodingTests: XCTestCase {

    let json = """
    {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    }
    """

    let object = Todo(
        id: 1,
        userId: 1,
        title: "delectus aut autem",
        isCompleted: false
    )

    func testDecodeTodo() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodeTodo() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }

}
