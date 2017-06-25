//
//  UserRoutingTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/23/17.
//

import XCTest
@testable import PlaceholderKit

class ModelRoutingTests: XCTestCase {

    func testUrlEndpointAll() {
        let route = Route(host: "example.com")
        let endpoint = Endpoint.users
        let url = route.url(for: endpoint)
        XCTAssertEqual(url, URL(string: "https://example.com/users"))
    }

    func testURLEndpointId() {
        let route = Route(host: "example.com")
        let endpoint = Endpoint.users
        let id = 1
        let url = route.url(for: endpoint, id: id)
        XCTAssertEqual(url, URL(string: "https://example.com/users/1"))
    }

    func testURLEndpointSubscript() {
        let baseUrl = URL(string: "https://example.com")!
        let fullUrl = baseUrl[Endpoint.users]
        XCTAssertEqual(fullUrl, URL(string: "https://example.com/users"))
    }

    func testURLIdSubscript() {
        let baseUrl = URL(string: "https://example.com")!
        let fullUrl = baseUrl[Endpoint.users]
        let id = 1
        let url = fullUrl[id]
        XCTAssertEqual(url, URL(string: "https://example.com/users/1"))
    }
}

class UserRoutingTests: XCTestCase {

    func testAllUsersResourceURL() {
        let route = Route(scheme: "file", host: "example.com")
        let resource = User.all(route: route)
        XCTAssertEqual(resource.url, URL(string: "file://example.com/users"))
    }

    func testAllUsersResourceParse() {
        let bundle = Bundle.init(for: UserRoutingTests.self)
        let folder = String(bundle.bundleURL.absoluteString.characters.dropFirst(7))
        let route = Route(scheme: "file", host: folder)
        let url = Bundle.init(for: UserRoutingTests.self).url(forResource: "users", withExtension: nil)!
        let allUsersResource = User.all(route: route)
        XCTAssertEqual(allUsersResource.url, url)
        let data = try! Data.init(contentsOf: allUsersResource.url)
        let users = allUsersResource.parse(data)
        XCTAssertNotNil(users)
        XCTAssertEqual(users!.count, 10)
    }
    
}
