//
//  TodoTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/20/17.
//

import XCTest
@testable import PlaceholderKit

func testDecode<T>(json: String, object: T) where T: Codable & Equatable {
    let decoder = JSONDecoder()
    let data = json.data(using: .utf8)!
    let result = try? decoder.decode(T.self, from: data)
    XCTAssertNotNil(result)
    XCTAssertEqual(object, result!)
}

func testEncodeDecode<T>(json: String, object: T) where T: Codable & Equatable {
    let encoder = JSONEncoder()
    let encoded = try! encoder.encode(object)
    let decoder = JSONDecoder()
    let decoded = try! decoder.decode(T.self, from: encoded)
    XCTAssertEqual(object, decoded)
}

class TodoTests: XCTestCase {

    let json = """
    {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    }
    """

    let todo = Todo(
        id: 1,
        userId: 1,
        title: "delectus aut autem",
        isCompleted: false
    )

    func testDecodeTodo() {
        testDecode(json: json, object: todo)
    }

    func testEncodeDecodeTodo() {
        testEncodeDecode(json: json, object: todo)
    }


}
