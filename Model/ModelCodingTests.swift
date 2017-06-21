//
//  ModelCodingTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/21/17.
//

import XCTest
@testable import PlaceholderKit

func testDecode<T>(item: Item<T>) {
    let decoder = JSONDecoder()
    let data = item.json.data(using: .utf8)!
    let result = try? decoder.decode(T.self, from: data)
    XCTAssertNotNil(result)
    XCTAssertEqual(item.object, result!)
}

func testEncodeDecode<T>(item: Item<T>) {
    let encoder = JSONEncoder()
    let encoded = try! encoder.encode(item.object)
    let decoder = JSONDecoder()
    let decoded = try! decoder.decode(T.self, from: encoded)
    XCTAssertEqual(item.object, decoded)
}

struct Item<T: Codable & Equatable> {
    let json: String
    let object: T
}

